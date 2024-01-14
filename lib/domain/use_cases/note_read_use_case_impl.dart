import 'package:note/core/result/result.dart';
import 'package:note/domain/interface/repository/note_repository.dart';
import 'package:note/domain/interface/use_cases/note_read_use_case.dart';
import 'package:note/domain/model/note.dart';

final class NoteReadUseCaseImpl implements NoteReadUseCase {
  final NoteRepository _repository;

  const NoteReadUseCaseImpl({
    required NoteRepository repository,
  }) : _repository = repository;

  @override
  Future<Result<List<Note>>> execute({required void query}) => _repository.read();
}
