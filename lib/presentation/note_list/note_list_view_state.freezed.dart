// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_list_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NoteListViewState {
  List<Note> get notes => throw _privateConstructorUsedError;
  SortType get sortType => throw _privateConstructorUsedError;
  Map<SortType, SortDirection> get sortTypes =>
      throw _privateConstructorUsedError;
  Note? get lastDeletedNote => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteListViewStateCopyWith<NoteListViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteListViewStateCopyWith<$Res> {
  factory $NoteListViewStateCopyWith(
          NoteListViewState value, $Res Function(NoteListViewState) then) =
      _$NoteListViewStateCopyWithImpl<$Res, NoteListViewState>;
  @useResult
  $Res call(
      {List<Note> notes,
      SortType sortType,
      Map<SortType, SortDirection> sortTypes,
      Note? lastDeletedNote});
}

/// @nodoc
class _$NoteListViewStateCopyWithImpl<$Res, $Val extends NoteListViewState>
    implements $NoteListViewStateCopyWith<$Res> {
  _$NoteListViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = null,
    Object? sortType = null,
    Object? sortTypes = null,
    Object? lastDeletedNote = freezed,
  }) {
    return _then(_value.copyWith(
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
      sortType: null == sortType
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as SortType,
      sortTypes: null == sortTypes
          ? _value.sortTypes
          : sortTypes // ignore: cast_nullable_to_non_nullable
              as Map<SortType, SortDirection>,
      lastDeletedNote: freezed == lastDeletedNote
          ? _value.lastDeletedNote
          : lastDeletedNote // ignore: cast_nullable_to_non_nullable
              as Note?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoteListViewStateImplCopyWith<$Res>
    implements $NoteListViewStateCopyWith<$Res> {
  factory _$$NoteListViewStateImplCopyWith(_$NoteListViewStateImpl value,
          $Res Function(_$NoteListViewStateImpl) then) =
      __$$NoteListViewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Note> notes,
      SortType sortType,
      Map<SortType, SortDirection> sortTypes,
      Note? lastDeletedNote});
}

/// @nodoc
class __$$NoteListViewStateImplCopyWithImpl<$Res>
    extends _$NoteListViewStateCopyWithImpl<$Res, _$NoteListViewStateImpl>
    implements _$$NoteListViewStateImplCopyWith<$Res> {
  __$$NoteListViewStateImplCopyWithImpl(_$NoteListViewStateImpl _value,
      $Res Function(_$NoteListViewStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = null,
    Object? sortType = null,
    Object? sortTypes = null,
    Object? lastDeletedNote = freezed,
  }) {
    return _then(_$NoteListViewStateImpl(
      notes: null == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
      sortType: null == sortType
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as SortType,
      sortTypes: null == sortTypes
          ? _value._sortTypes
          : sortTypes // ignore: cast_nullable_to_non_nullable
              as Map<SortType, SortDirection>,
      lastDeletedNote: freezed == lastDeletedNote
          ? _value.lastDeletedNote
          : lastDeletedNote // ignore: cast_nullable_to_non_nullable
              as Note?,
    ));
  }
}

/// @nodoc

class _$NoteListViewStateImpl
    with DiagnosticableTreeMixin
    implements _NoteListViewState {
  const _$NoteListViewStateImpl(
      {final List<Note> notes = const <Note>[],
      this.sortType = SortType.updateDate,
      final Map<SortType, SortDirection> sortTypes =
          const <SortType, SortDirection>{
        SortType.title: SortDirection.ascending,
        SortType.updateDate: SortDirection.ascending
      },
      this.lastDeletedNote})
      : _notes = notes,
        _sortTypes = sortTypes;

  final List<Note> _notes;
  @override
  @JsonKey()
  List<Note> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  @JsonKey()
  final SortType sortType;
  final Map<SortType, SortDirection> _sortTypes;
  @override
  @JsonKey()
  Map<SortType, SortDirection> get sortTypes {
    if (_sortTypes is EqualUnmodifiableMapView) return _sortTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_sortTypes);
  }

  @override
  final Note? lastDeletedNote;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NoteListViewState(notes: $notes, sortType: $sortType, sortTypes: $sortTypes, lastDeletedNote: $lastDeletedNote)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NoteListViewState'))
      ..add(DiagnosticsProperty('notes', notes))
      ..add(DiagnosticsProperty('sortType', sortType))
      ..add(DiagnosticsProperty('sortTypes', sortTypes))
      ..add(DiagnosticsProperty('lastDeletedNote', lastDeletedNote));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteListViewStateImpl &&
            const DeepCollectionEquality().equals(other._notes, _notes) &&
            (identical(other.sortType, sortType) ||
                other.sortType == sortType) &&
            const DeepCollectionEquality()
                .equals(other._sortTypes, _sortTypes) &&
            (identical(other.lastDeletedNote, lastDeletedNote) ||
                other.lastDeletedNote == lastDeletedNote));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_notes),
      sortType,
      const DeepCollectionEquality().hash(_sortTypes),
      lastDeletedNote);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteListViewStateImplCopyWith<_$NoteListViewStateImpl> get copyWith =>
      __$$NoteListViewStateImplCopyWithImpl<_$NoteListViewStateImpl>(
          this, _$identity);
}

abstract class _NoteListViewState implements NoteListViewState {
  const factory _NoteListViewState(
      {final List<Note> notes,
      final SortType sortType,
      final Map<SortType, SortDirection> sortTypes,
      final Note? lastDeletedNote}) = _$NoteListViewStateImpl;

  @override
  List<Note> get notes;
  @override
  SortType get sortType;
  @override
  Map<SortType, SortDirection> get sortTypes;
  @override
  Note? get lastDeletedNote;
  @override
  @JsonKey(ignore: true)
  _$$NoteListViewStateImplCopyWith<_$NoteListViewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
