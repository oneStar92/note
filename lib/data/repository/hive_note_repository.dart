import 'package:note/common/result.dart';
import 'package:note/data/dao/note_hive_dao.dart';
import 'package:note/data/mapper/hive_dao_mapper.dart';
import 'package:note/domain/interface/repository/note_repository.dart';
import 'package:note/domain/model/note.dart';
import 'package:hive_flutter/hive_flutter.dart';

final class HiveNoteRepository implements NoteRepository {
  static final HiveNoteRepository shared = HiveNoteRepository._();

  HiveNoteRepository._();

  Box<NoteHiveDAO>? _box;

  Future<void> configureBox() async {
    _box = await Hive.openBox<NoteHiveDAO>('note');
  }

  @override
  Future<Result<void>> create({required Note note}) async {
    final box = _box;
    if (box != null) {
      try {
        return Result.success(await box.add(note.toDAO()));
      } catch (e) {
        return Result.error(e.toString());
      }
    } else {
      return const Result.error('Box is null');
    }
  }

  @override
  Future<Result<void>> delete({required Note note}) async {
    final box = _box;
    if (box != null) {
      try {
        return Result.success(await box.delete(note.primaryKey));
      } catch (e) {
        return Result.error(e.toString());
      }
    } else {
      return const Result.error('Box is null');
    }
  }

  @override
  Future<Result<List<Note>>> read() async {
    final box = _box;
    if (box != null) {
      return Result.success(box.values.map((e) => e.toDomain()).toList());
    } else {
      return const Result.error('Box is null');
    }
  }

  @override
  Future<Result<void>> update({required Note note}) async {
    final box = _box;
    if (box != null) {
      try {
        return Result.success(await box.put(note.primaryKey, note.toDAO()));
      } catch (e) {
        return Result.error(e.toString());
      }
    } else {
      return const Result.error('Box is null');
    }
  }
}
