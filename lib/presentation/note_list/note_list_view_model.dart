import 'dart:math';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:note/domain/interface/use_cases/note_delete_use_case.dart';
import 'package:note/domain/interface/use_cases/note_read_use_case.dart';
import 'package:note/domain/interface/use_cases/note_save_use_case.dart';
import 'package:note/domain/model/note.dart';
import 'package:note/presentation/note_list/model/sort_direction.dart';
import 'package:note/presentation/note_list/model/sort_type.dart';
import 'package:note/presentation/note_list/note_list_view_state.dart';
import 'package:intl/intl.dart';

final class NoteListViewModel extends ChangeNotifier {
  final NoteReadUseCase _readUseCase;
  final NoteSaveUseCase _saveUseCase;
  final NoteDeleteUseCase _deleteUseCase;
  NoteListViewState _state;

  NoteListViewModel({
    required NoteReadUseCase readUseCase,
    required NoteSaveUseCase saveUseCase,
    required NoteDeleteUseCase deleteUseCase,
  })  : _readUseCase = readUseCase,
        _saveUseCase = saveUseCase,
        _deleteUseCase = deleteUseCase,
        _state = const NoteListViewState() {
    readAll();
  }

  List<Note> get notes => _state.notes;

  SortType get sortType => _state.sortType;

  set sortType(SortType value) {
    if (sortType == value) {
      _swapCurrentSortDirection();
    } else {
      _state = _state.copyWith(sortType: value);
    }
    _sortedNotes();
    notifyListeners();
  }

  SortDirection? getSortDirection(SortType sortType) => _state.sortType == sortType ? _state.sortTypes[sortType] : null;

  void readAll() async {
    final result = await _readUseCase.execute(query: ());
    result.when(
      success: (notes) {
        _state = _state.copyWith(notes: notes);
        _sortedNotes();
        notifyListeners();
      },
      error: (_) {},
    );
  }

  Future<void> deleteAt(int index, {required Function() onSuccess}) async {
    final targetNote = _state.notes.elementAtOrNull(index);
    if (targetNote != null) {
      final result = await _deleteUseCase.execute(query: targetNote);
      result.when(
        success: (note) {
          _state = _state.copyWith(lastDeletedNote: note);
          readAll();
          onSuccess();
        },
        error: (_) {},
      );
    }
  }

  void undo() async {
    final lastDeletedNote = _state.lastDeletedNote;
    if (lastDeletedNote != null) {
      final result = await _saveUseCase.execute(query: lastDeletedNote);
      result.when(success: (_) => readAll(), error: (_) {});
    }
  }

  String previewAt(int index) {
    return _state.notes[index].content.substring(0, min(40, _state.notes[index].content.length));
  }

  String dateAt(int index) {
    final updateDate = _state.notes[index].updateDate;
    if (updateDate != null) {
      return DateFormat('yy/MM/dd HH:mm').format(updateDate);
    } else {
      return '';
    }
  }

  void _swapCurrentSortDirection() {
    _state = _state.copyWith(
      sortTypes: _state.sortTypes.map(
        (key, previousValue) => MapEntry(
            key,
            key == sortType
                ? previousValue == SortDirection.descending
                    ? SortDirection.ascending
                    : SortDirection.descending
                : previousValue),
      ),
    );
  }

  void _sortedNotes() {
    switch (sortType) {
      case SortType.title:
        _state.sortTypes[sortType] == SortDirection.ascending
            ? _state = _state.copyWith(notes: _state.notes.sorted((lhs, rhs) => lhs.title.compareTo(rhs.title)))
            : _state = _state.copyWith(notes: _state.notes.sorted((lhs, rhs) => rhs.title.compareTo(lhs.title)));
      case SortType.updateDate:
        _state.sortTypes[sortType] == SortDirection.ascending
            ? _state = _state.copyWith(notes: _state.notes.sorted((lhs, rhs) => lhs.updateDate.compareTo(rhs.updateDate)))
            : _state = _state.copyWith(notes: _state.notes.sorted((lhs, rhs) => rhs.updateDate.compareTo(lhs.updateDate)));
    }
  }
}