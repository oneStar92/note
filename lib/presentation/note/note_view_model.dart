import 'package:flutter/foundation.dart';
import 'package:note/common/result.dart';
import 'package:note/domain/interface/use_cases/note_save_use_case.dart';
import 'package:note/presentation/note/note_view_state.dart';

final class NoteViewModel extends ChangeNotifier {
  final NoteSaveUseCase _saveUseCase;
  NoteViewState _state;

  NoteViewModel({
    required NoteViewState noteViewState,
    required NoteSaveUseCase noteSaveUseCase,
  })  : _state = noteViewState,
        _saveUseCase = noteSaveUseCase;

  String get title => _state.note.title;

  String get content => _state.note.content;

  int get backgroundColor => _state.note.backgroundColor;

  int get fontColor => _state.note.fontColor;

  int get borderColor => 0xFF888888 < _state.note.backgroundColor ? 0xFF000000 : 0xFFFFFFFF;

  set title(String value) {
    _state = _state.copyWith(note: _state.note.copyWith(title: value));
  }

  set content(String value) {
    _state = _state.copyWith(note: _state.note.copyWith(content: value));
  }

  set backgroundColor(int value) {
    _state = _state.copyWith(note: _state.note.copyWith(backgroundColor: value));
    notifyListeners();
  }

  set fontColor(int value) {
    _state = _state.copyWith(note: _state.note.copyWith(fontColor: value));
    notifyListeners();
  }

  Future<void> save({required Function(String) onError}) async {
    if (_state.note.title.isEmpty || _state.note.content.isEmpty) {
      onError('제목과 내용을 적어주세요!!');
    } else {
      final result = await _saveUseCase.execute(query: _state.note);
      result.when(success: (_) {}, error: onError);
    }
  }
}
