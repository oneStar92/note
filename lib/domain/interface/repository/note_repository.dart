import 'package:note/core/result/result.dart';
import 'package:note/domain/model/note.dart';

abstract interface class NoteRepository {
  Future<Result<void>> create({required Note note});
  Future<Result<List<Note>>> read();
  Future<Result<void>> update({required Note note});
  Future<Result<Note>> delete({required Note note});
}