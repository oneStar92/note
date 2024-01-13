import 'package:hive_flutter/hive_flutter.dart';

part 'note_hive_dao.g.dart';

@HiveType(typeId: 1)
final class NoteHiveDAO extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String content;
  @HiveField(2)
  final int backgroundColor;
  @HiveField(3)
  final int fontColor;
  @HiveField(4)
  final DateTime updateDate;

  NoteHiveDAO({
    required this.title,
    required this.content,
    required this.backgroundColor,
    required this.fontColor,
    required this.updateDate,
  });
}
