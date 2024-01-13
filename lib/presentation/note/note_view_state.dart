import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:note/domain/model/note.dart';

part 'note_view_state.freezed.dart';

@freezed
class NoteViewState with _$NoteViewState {
  const factory NoteViewState({
    required Note note,
  }) = _NoteViewState;
}