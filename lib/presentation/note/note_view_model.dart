import 'package:flutter/foundation.dart';
import 'package:note/common/result.dart';
import 'package:note/domain/interface/use_cases/note_create_use_case.dart';
import 'package:note/domain/interface/use_cases/note_update_use_case.dart';
import 'package:note/domain/model/note.dart';
import 'package:note/presentation/note/note_view_state.dart';

final class NoteViewModel extends ChangeNotifier {
  final NoteCreateUseCase _createUseCase;
  final NoteUpdateUseCase _updateUseCase;
  NoteViewState _state;

  NoteViewModel({
    required NoteCreateUseCase createUseCase,
    required NoteUpdateUseCase updateUseCase,
  })  : _createUseCase = createUseCase,
        _updateUseCase = updateUseCase,
        _state = const NoteViewState() {
    _configure();
  }

  String get title => _state.title;

  String get content => _state.content;

  int get backgroundColor => _state.backGroundColor;

  int get fontColor => _state.fontColor;

  set title(String value) {
    _state = _state.copyWith(title: value);
    notifyListeners();
  }

  set content(String value) {
    _state = _state.copyWith(content: value);
    notifyListeners();
  }

  set backgroundColor(int value) {
    _state = _state.copyWith(backGroundColor: value);
    notifyListeners();
  }

  set fontColor(int value) {
    _state = _state.copyWith(fontColor: value);
    notifyListeners();
  }

  void _configure() {
    final note = _state.note;
    if (note != null) {
      _state = _state.copyWith(
        title: note.title,
        content: note.content,
        backGroundColor: note.backgroundColor,
        fontColor: note.fontColor,
      );
      notifyListeners();
    }
  }

  void save({required Function() onError, required Function() onComplete}) async {
    if (_state.title.isEmpty || _state.content.isEmpty) {
      onError;
    } else {
      final Result<void> result;
      Note? note = _state.note;

      if (note != null) {
        note = note.copyWith(
          title: _state.title,
          content: _state.content,
          backgroundColor: _state.backGroundColor,
          fontColor: _state.fontColor,
        );
        result = await _updateUseCase.execute(query: note);
      } else {
        result = await _createUseCase.execute(
          query: Note(
            title: _state.title,
            content: _state.content,
            backgroundColor: _state.backGroundColor,
            fontColor: _state.fontColor,
          ),
        );
      }

      result.when(
        success: (_) => onComplete,
        error: (_) => onError,
      );
    }
  }
}
