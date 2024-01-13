import 'package:note/data/repository/hive_note_repository.dart';
import 'package:note/domain/model/note.dart';
import 'package:note/domain/use_cases/note_delete_use_case_impl.dart';
import 'package:note/domain/use_cases/note_read_use_case_impl.dart';
import 'package:note/domain/use_cases/note_save_use_case_impl.dart';
import 'package:note/presentation/note/note_screen.dart';
import 'package:note/presentation/note/note_view_model.dart';
import 'package:note/presentation/note/note_view_state.dart';
import 'package:note/presentation/note_list/note_list_screen.dart';
import 'package:note/presentation/note_list/note_list_view_model.dart';
import 'package:provider/provider.dart';

final noteListViewModelProvider = ChangeNotifierProvider<NoteListViewModel>(
  create: (_) {
    final repository = HiveNoteRepository.shared;
    final readUseCase = NoteReadUseCaseImpl(repository: repository);
    final deleteUseCase = NoteDeleteUseCaseImpl(repository: repository);
    return NoteListViewModel(readUseCase: readUseCase, deleteUseCase: deleteUseCase);
  },
  child: const NoteListScreen(),
);

ChangeNotifierProvider<NoteViewModel> getNoteViewModelProvider({Note? note}) {
  return ChangeNotifierProvider<NoteViewModel>(
    create: (_) {
      final repository = HiveNoteRepository.shared;
      final noteSaveUseCase = NoteSaveUseCaseImpl(repository: repository);
      return NoteViewModel(
        noteSaveUseCase: noteSaveUseCase,
        noteViewState: NoteViewState(
          note: note ?? Note(),
        ),
      );
    },
    child: NoteScreen(),
  );
}
