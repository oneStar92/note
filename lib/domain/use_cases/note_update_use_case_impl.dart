import 'package:note/common/result.dart';
import 'package:note/domain/interface/repository/note_repository.dart';
import 'package:note/domain/interface/use_cases/note_update_use_case.dart';

final class NoteUpdateUseCaseImpl implements NoteUpdateUseCase {
  final NoteRepository _repository;

  const NoteUpdateUseCaseImpl({
    required NoteRepository repository,
  }) : _repository = repository;

  @override
  Future<Result<void>> execute({required UpdateQuery query}) => _repository.update(index: query.index, note: query.note);
}
