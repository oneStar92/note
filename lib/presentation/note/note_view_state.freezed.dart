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
  Note? get note => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get backGroundColor => throw _privateConstructorUsedError;
  int get fontColor => throw _privateConstructorUsedError;

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
  $Res call(
      {Note? note,
      String title,
      String content,
      int backGroundColor,
      int fontColor});

  $NoteCopyWith<$Res>? get note;
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
    Object? note = freezed,
    Object? title = null,
    Object? content = null,
    Object? backGroundColor = null,
    Object? fontColor = null,
  }) {
    return _then(_value.copyWith(
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      backGroundColor: null == backGroundColor
          ? _value.backGroundColor
          : backGroundColor // ignore: cast_nullable_to_non_nullable
              as int,
      fontColor: null == fontColor
          ? _value.fontColor
          : fontColor // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NoteCopyWith<$Res>? get note {
    if (_value.note == null) {
      return null;
    }

    return $NoteCopyWith<$Res>(_value.note!, (value) {
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
  $Res call(
      {Note? note,
      String title,
      String content,
      int backGroundColor,
      int fontColor});

  @override
  $NoteCopyWith<$Res>? get note;
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
    Object? note = freezed,
    Object? title = null,
    Object? content = null,
    Object? backGroundColor = null,
    Object? fontColor = null,
  }) {
    return _then(_$NoteViewStateImpl(
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      backGroundColor: null == backGroundColor
          ? _value.backGroundColor
          : backGroundColor // ignore: cast_nullable_to_non_nullable
              as int,
      fontColor: null == fontColor
          ? _value.fontColor
          : fontColor // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NoteViewStateImpl
    with DiagnosticableTreeMixin
    implements _NoteViewState {
  const _$NoteViewStateImpl(
      {this.note,
      this.title = '',
      this.content = '',
      this.backGroundColor = 0xFF000000,
      this.fontColor = 0xFFFFFFFF});

  @override
  final Note? note;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String content;
  @override
  @JsonKey()
  final int backGroundColor;
  @override
  @JsonKey()
  final int fontColor;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NoteViewState(note: $note, title: $title, content: $content, backGroundColor: $backGroundColor, fontColor: $fontColor)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NoteViewState'))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('backGroundColor', backGroundColor))
      ..add(DiagnosticsProperty('fontColor', fontColor));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteViewStateImpl &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.backGroundColor, backGroundColor) ||
                other.backGroundColor == backGroundColor) &&
            (identical(other.fontColor, fontColor) ||
                other.fontColor == fontColor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, note, title, content, backGroundColor, fontColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteViewStateImplCopyWith<_$NoteViewStateImpl> get copyWith =>
      __$$NoteViewStateImplCopyWithImpl<_$NoteViewStateImpl>(this, _$identity);
}

abstract class _NoteViewState implements NoteViewState {
  const factory _NoteViewState(
      {final Note? note,
      final String title,
      final String content,
      final int backGroundColor,
      final int fontColor}) = _$NoteViewStateImpl;

  @override
  Note? get note;
  @override
  String get title;
  @override
  String get content;
  @override
  int get backGroundColor;
  @override
  int get fontColor;
  @override
  @JsonKey(ignore: true)
  _$$NoteViewStateImplCopyWith<_$NoteViewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
