import 'package:flutter/foundation.dart';
import 'package:note/common/result.dart';
import 'package:note/domain/interface/use_cases/note_create_use_case.dart';
import 'package:note/domain/interface/use_cases/note_update_use_case.dart';
import 'package:note/presentation/note/note_view_state.dart';

final class NoteViewModel extends ChangeNotifier {
  final NoteCreateUseCase _createUseCase;
  final NoteUpdateUseCase _updateUseCase;
  NoteViewState _state;

  NoteViewModel({
    required NoteCreateUseCase createUseCase,
    required NoteUpdateUseCase updateUseCase,
    required NoteViewState noteViewState,
  })  : _createUseCase = createUseCase,
        _updateUseCase = updateUseCase,
        _state = noteViewState;

  String get title => _state.note.title;

  String get content => _state.note.content;

  int get backgroundColor => _state.note.backgroundColor;

  int get fontColor => _state.note.fontColor;

  set title(String value) {
    _state = _state.copyWith(note: _state.note.copyWith(title: value));
    notifyListeners();
  }

  set content(String value) {
    _state = _state.copyWith(note: _state.note.copyWith(content: value));
    notifyListeners();
  }

  set backgroundColor(int value) {
    _state = _state.copyWith(note: _state.note.copyWith(backgroundColor: value));
    notifyListeners();
  }

  set fontColor(int value) {
    _state = _state.copyWith(note: _state.note.copyWith(fontColor: value));
    notifyListeners();
  }

  Future<Result<void>> save() async {
    if (_state.note.title.isEmpty || _state.note.content.isEmpty) {
      return const Result.error('제목과 내용을 적어주세요!!');
    } else {
      final Result<void> result;

      if (_state.index != null) {
        result = await _updateUseCase.execute(query: (index: _state.index!, note: _state.note));
      } else {
        result = await _createUseCase.execute(query: _state.note);
      }
      return result;
    }
  }
}
