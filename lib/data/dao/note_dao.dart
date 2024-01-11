import 'package:hive/hive.dart';

part 'note_dao.g.dart';

@HiveType(typeId: 0)
final class NoteDao {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String content;
  @HiveField(3)
  final int hexColor;
  @HiveField(4)
  final int hexFontColor;

  const NoteDao({
    required this.id,
    required this.title,
    required this.content,
    required this.hexColor,
    required this.hexFontColor,
  });
}
