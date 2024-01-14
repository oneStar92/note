import 'package:note/core/result/result.dart';
import 'package:note/domain/interface/repository/note_repository.dart';
import 'package:note/domain/interface/use_cases/note_save_use_case.dart';
import 'package:note/domain/model/note.dart';

final class NoteSaveUseCaseImpl implements NoteSaveUseCase {
  final NoteRepository _repository;

  const NoteSaveUseCaseImpl({
    required NoteRepository repository,
  }) : _repository = repository;

  @override
  Future<Result<void>> execute({required Note query}) {
    if (query.primaryKey != null) {
      return _repository.update(note: query);
    } else {
      return _repository.create(note: query);
    }
  }
}