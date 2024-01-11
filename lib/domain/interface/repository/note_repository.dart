import 'package:note/common/result.dart';
import 'package:note/domain/model/note.dart';

abstract interface class NoteRepository {
  Future<Result<void>> create({required Note note});
  Future<Result<List<Note>>> read();
  Future<Result<void>> update({required int index, required Note note});
  Future<Result<void>> delete({required Note note});
}