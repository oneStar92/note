import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:note/domain/interface/use_cases/note_delete_use_case.dart';
import 'package:note/domain/interface/use_cases/note_read_use_case.dart';
import 'package:note/domain/model/note.dart';
import 'package:note/presentation/note_list/note_list_view_state.dart';

final class NoteListViewModel extends ChangeNotifier {
  final NoteReadUseCase _readUseCase;
  final NoteDeleteUseCase _deleteUseCase;
  NoteListViewState _state;

  NoteListViewModel({
    required NoteReadUseCase readUseCase,
    required NoteDeleteUseCase deleteUseCase,
  })  : _readUseCase = readUseCase,
        _deleteUseCase = deleteUseCase,
        _state = const NoteListViewState();

  List<Note> get notes => _state.notes;

  void readAll() async {
    final result = await _readUseCase.execute(query: ());
    result.when(
      success: (notes) {
        _state = _state.copyWith(notes: notes);
        notifyListeners();
      },
      error: (_) {},
    );
  }

  void deleteAt(int index) async {
    final targetNote = _state.notes.elementAtOrNull(index);
    if (targetNote != null) {
      final result = await _deleteUseCase.execute(query: targetNote);
      result.when(
        success: (_) {
          readAll();
        },
        error: (_) {},
      );
    }
  }

  String previewAt(int index) {
    return _state.notes[index].content.substring(0, min(40, _state.notes[index].content.length));
  }
}
