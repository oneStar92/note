import 'package:note/core/use_case/use_case.dart';
import 'package:note/domain/model/note.dart';

abstract interface class NoteReadUseCase extends UseCase<void, List<Note>> {}