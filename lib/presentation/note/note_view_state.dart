import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:note/domain/model/note.dart';

part 'note_view_state.freezed.dart';

@freezed
class NoteViewState with _$NoteViewState {
  const factory NoteViewState({
    Note? note,
    @Default('') String title,
    @Default('') String content,
    @Default(0xFF000000) int backGroundColor,
    @Default(0xFFFFFFFF) int fontColor,
  }) = _NoteViewState;
}