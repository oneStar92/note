import 'package:note/domain/interface/use_case.dart';
import 'package:note/domain/model/note.dart';

abstract interface class NoteReadUseCase extends UseCase<void, List<Note>> {}