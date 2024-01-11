import 'package:note/common/result.dart';
import 'package:note/domain/interface/repository/note_repository.dart';
import 'package:note/domain/interface/use_cases/note_create_use_case.dart';
import 'package:note/domain/model/note.dart';

final class NoteCreateUseCaseImpl implements NoteCreateUseCase {
  final NoteRepository _repository;

  const NoteCreateUseCaseImpl({
    required NoteRepository repository,
  }) : _repository = repository;

  @override
  Future<Result<void>> execute({required Note query}) async => _repository.create(note: query);
}
