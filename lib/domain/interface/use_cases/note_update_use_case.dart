import 'package:note/domain/interface/use_cases/use_case.dart';
import 'package:note/domain/model/note.dart';

typedef UpdateQuery = ({int index, Note note});
abstract interface class NoteUpdateUseCase extends UseCase<UpdateQuery, void> {}