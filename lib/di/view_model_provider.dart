import 'package:note/data/repository/hive_note_repository.dart';
import 'package:note/domain/use_cases/note_delete_use_case_impl.dart';
import 'package:note/domain/use_cases/note_read_use_case_impl.dart';
import 'package:note/presentation/note_list/components/note_list_view.dart';
import 'package:note/presentation/note_list/note_list_view_model.dart';
import 'package:provider/provider.dart';

final noteListViewModelProvider = ChangeNotifierProvider<NoteListViewModel>(
  create: (_) {
    final repository = HiveNoteRepository.shared;
    final readUseCase = NoteReadUseCaseImpl(repository: repository);
    final deleteUseCase = NoteDeleteUseCaseImpl(repository: repository);
    return NoteListViewModel(readUseCase: readUseCase, deleteUseCase: deleteUseCase);
  },
  child: const NoteListView(),
);
