import 'package:note/common/result.dart';
import 'package:note/domain/interface/repository/note_repository.dart';
import 'package:note/domain/model/note.dart';
import 'package:hive_flutter/hive_flutter.dart';

final class HiveNoteRepository implements NoteRepository {
  static final HiveNoteRepository shared = HiveNoteRepository._();

  HiveNoteRepository._();

  Box<Note>? _box;

  Future<void> configureBox() async {
    _box = await Hive.openBox<Note>('note');
  }

  @override
  Future<Result<void>> create({required Note note}) async {
    final box = _box;
    if (box != null) {
      try {
        return Result.success(await _box?.add(note));
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
        return Result.success(await note.delete());
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
      return Result.success(box.values.toList());
    } else {
      return const Result.error('Box is null');
    }
  }

  @override
  Future<Result<void>> update({required int index, required Note note}) async {
    final box = _box;
    if (box != null) {
      try {
        return Result.success(await box.putAt(index, note));
      } catch (e) {
        return Result.error(e.toString());
      }
    } else {
      return const Result.error('Box is null');
    }
  }
}
