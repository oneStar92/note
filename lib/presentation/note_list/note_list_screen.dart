import 'package:flutter/material.dart';
import 'package:note/di/view_model_provider.dart';
import 'package:note/domain/model/note.dart';
import 'package:note/presentation/note_list/components/note_list_item.dart';
import 'package:note/presentation/note_list/model/sort_type.dart';
import 'package:note/presentation/note_list/note_list_view_model.dart';
import 'package:provider/provider.dart';

final class NoteListScreen extends StatelessWidget {
  const NoteListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NoteListViewModel>(builder: (context, viewModel, child) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text(
            'My Note',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Colors.black,
          centerTitle: false,
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          actions: [
            IconButton(
              onPressed: () {
                _pushNoteScreen(context: context).then((_) => viewModel.readAll());
              },
              icon: const Icon(Icons.add),
            ),
            PopupMenuButton(
              initialValue: viewModel.sortType,
              onSelected: (sortType) => viewModel.sortType = sortType,
              itemBuilder: (context) => [
                PopupMenuItem<SortType>(
                  value: SortType.updateDate,
                  child: Row(
                    children: [
                      Expanded(child: Text(SortType.updateDate.toString())),
                      Icon(viewModel.getSortDirection(SortType.updateDate)?.icon),
                    ],
                  ),
                ),
                PopupMenuItem<SortType>(
                  value: SortType.title,
                  child: Row(
                    children: [
                      Expanded(child: Text(SortType.title.toString())),
                      Icon(viewModel.getSortDirection(SortType.title)?.icon),
                    ],
                  ),
                ),
              ],
              icon: const Icon(Icons.sort),
            ),
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 80,
                    width: double.infinity,
                    child: NoteListItem(
                      onClick: () => _pushNoteScreen(context: context, note: viewModel.notes[index])
                          .then((value) => viewModel.readAll()),
                      onDelete: () => viewModel.deleteAt(
                        index,
                        onSuccess: () => _showDeleteUndoSnackBar(
                          context: context,
                          onUndo: () => viewModel.undo(),
                        ),
                      ),
                      title: viewModel.notes[index].title,
                      date: viewModel.dateAt(index),
                      preview: viewModel.previewAt(index),
                      backgroundColor: Color(viewModel.notes[index].backgroundColor),
                      fontColor: Color(viewModel.notes[index].fontColor),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    color: Colors.transparent,
                    height: 8.0,
                  );
                },
                itemCount: viewModel.notes.length),
          ),
        ),
      );
    });
  }

  Future<void> _pushNoteScreen({required BuildContext context, Note? note}) {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => getNoteViewModelProvider(note: note),
      ),
    );
  }

  void _showDeleteUndoSnackBar({required BuildContext context, required Function() onUndo}) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: const Text(
        'Note Deleted',
        style: TextStyle(
          fontSize: 24,
          color: Colors.white,
        ),
      ),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: onUndo,
      ),
      duration: const Duration(seconds: 5),
    ));
  }
}
