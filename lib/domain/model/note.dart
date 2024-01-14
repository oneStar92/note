import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'note.freezed.dart';

@Freezed(copyWith: false)
class Note with _$Note {
  Note._();

  factory Note({
    int? primaryKey,
    @Default('') String title,
    @Default('') String content,
    @Default(0xFF000000) int backgroundColor,
    @Default(0xFFFFFFFF) int fontColor,
    required DateTime updateDate,
  }) = _Note;

  Note copyWith({
    String? title,
    String? content,
    int? backgroundColor,
    int? fontColor,
    DateTime? updateDate,
  }) {
    return Note(
      primaryKey: primaryKey,
      title: title ?? this.title,
      content: content ?? this.content,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      fontColor: fontColor ?? this.fontColor,
      updateDate: updateDate ?? this.updateDate,
    );
  }
}
