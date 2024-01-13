// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Note {
  int? get primaryKey => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get backgroundColor => throw _privateConstructorUsedError;
  int get fontColor => throw _privateConstructorUsedError;
  DateTime? get updateDate => throw _privateConstructorUsedError;
}

/// @nodoc

class _$NoteImpl extends _Note with DiagnosticableTreeMixin {
  _$NoteImpl(
      {this.primaryKey,
      this.title = '',
      this.content = '',
      this.backgroundColor = 0xFF000000,
      this.fontColor = 0xFFFFFFFF,
      this.updateDate})
      : super._();

  @override
  final int? primaryKey;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String content;
  @override
  @JsonKey()
  final int backgroundColor;
  @override
  @JsonKey()
  final int fontColor;
  @override
  final DateTime? updateDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Note(primaryKey: $primaryKey, title: $title, content: $content, backgroundColor: $backgroundColor, fontColor: $fontColor, updateDate: $updateDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Note'))
      ..add(DiagnosticsProperty('primaryKey', primaryKey))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('backgroundColor', backgroundColor))
      ..add(DiagnosticsProperty('fontColor', fontColor))
      ..add(DiagnosticsProperty('updateDate', updateDate));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteImpl &&
            (identical(other.primaryKey, primaryKey) ||
                other.primaryKey == primaryKey) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.fontColor, fontColor) ||
                other.fontColor == fontColor) &&
            (identical(other.updateDate, updateDate) ||
                other.updateDate == updateDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, primaryKey, title, content,
      backgroundColor, fontColor, updateDate);
}

abstract class _Note extends Note {
  factory _Note(
      {final int? primaryKey,
      final String title,
      final String content,
      final int backgroundColor,
      final int fontColor,
      final DateTime? updateDate}) = _$NoteImpl;
  _Note._() : super._();

  @override
  int? get primaryKey;
  @override
  String get title;
  @override
  String get content;
  @override
  int get backgroundColor;
  @override
  int get fontColor;
  @override
  DateTime? get updateDate;
}
