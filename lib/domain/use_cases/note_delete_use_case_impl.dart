import 'package:note/core/result/result.dart';
import 'package:note/domain/interface/repository/note_repository.dart';
import 'package:note/domain/interface/use_cases/note_delete_use_case.dart';
import 'package:note/domain/model/note.dart';

final class NoteDeleteUseCaseImpl implements NoteDeleteUseCase {
  final NoteRepository _repository;

  const NoteDeleteUseCaseImpl({
    required NoteRepository repository,
  }) : _repository = repository;

  @override
  Future<Result<Note>> execute({required Note query}) => _repository.delete(note: query);
}
