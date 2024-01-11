import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:note/domain/model/note.dart';

part 'note_list_view_state.freezed.dart';

@freezed
class NoteListViewState with _$NoteListViewState {
  const factory NoteListViewState({
    @Default(<Note>[]) List<Note> notes,
  }) = _NoteListViewState;
}