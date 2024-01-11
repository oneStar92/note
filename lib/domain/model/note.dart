import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

part 'note.freezed.dart';

part 'note.g.dart';

@freezed
class Note extends HiveObject with _$Note {
  Note._();

  @HiveType(typeId: 0)
  factory Note({
  @HiveField(0) required String title,
  @HiveField(1) required String content,
  @HiveField(2) required int backgroundColor,
  @HiveField(3) required int fontColor,
  }) = _Note;
}