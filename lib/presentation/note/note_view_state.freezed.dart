// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NoteViewState {
  Note get note => throw _privateConstructorUsedError;
  int? get index => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteViewStateCopyWith<NoteViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteViewStateCopyWith<$Res> {
  factory $NoteViewStateCopyWith(
          NoteViewState value, $Res Function(NoteViewState) then) =
      _$NoteViewStateCopyWithImpl<$Res, NoteViewState>;
  @useResult
  $Res call({Note note, int? index});

  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class _$NoteViewStateCopyWithImpl<$Res, $Val extends NoteViewState>
    implements $NoteViewStateCopyWith<$Res> {
  _$NoteViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
    Object? index = freezed,
  }) {
    return _then(_value.copyWith(
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NoteCopyWith<$Res> get note {
    return $NoteCopyWith<$Res>(_value.note, (value) {
      return _then(_value.copyWith(note: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NoteViewStateImplCopyWith<$Res>
    implements $NoteViewStateCopyWith<$Res> {
  factory _$$NoteViewStateImplCopyWith(
          _$NoteViewStateImpl value, $Res Function(_$NoteViewStateImpl) then) =
      __$$NoteViewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Note note, int? index});

  @override
  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class __$$NoteViewStateImplCopyWithImpl<$Res>
    extends _$NoteViewStateCopyWithImpl<$Res, _$NoteViewStateImpl>
    implements _$$NoteViewStateImplCopyWith<$Res> {
  __$$NoteViewStateImplCopyWithImpl(
      _$NoteViewStateImpl _value, $Res Function(_$NoteViewStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
    Object? index = freezed,
  }) {
    return _then(_$NoteViewStateImpl(
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$NoteViewStateImpl
    with DiagnosticableTreeMixin
    implements _NoteViewState {
  const _$NoteViewStateImpl({required this.note, this.index});

  @override
  final Note note;
  @override
  final int? index;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NoteViewState(note: $note, index: $index)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NoteViewState'))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteViewStateImpl &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteViewStateImplCopyWith<_$NoteViewStateImpl> get copyWith =>
      __$$NoteViewStateImplCopyWithImpl<_$NoteViewStateImpl>(this, _$identity);
}

abstract class _NoteViewState implements NoteViewState {
  const factory _NoteViewState({required final Note note, final int? index}) =
      _$NoteViewStateImpl;

  @override
  Note get note;
  @override
  int? get index;
  @override
  @JsonKey(ignore: true)
  _$$NoteViewStateImplCopyWith<_$NoteViewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
