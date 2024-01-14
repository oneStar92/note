import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:note/domain/model/note.dart';
import 'package:note/presentation/note_list/model/sort_direction.dart';
import 'package:note/presentation/note_list/model/sort_type.dart';

part 'note_list_view_state.freezed.dart';

@freezed
class NoteListViewState with _$NoteListViewState {
  const factory NoteListViewState({
    @Default(<Note>[]) List<Note> notes,
    @Default(SortType.updateDate) SortType sortType,
    @Default(<SortType, SortDirection>{
      SortType.title: SortDirection.ascending,
      SortType.updateDate: SortDirection.ascending,
    }) Map<SortType, SortDirection> sortTypes,
    Note? lastDeletedNote,
  }) = _NoteListViewState;
}
