import 'package:flutter/material.dart';
import 'package:note/presentation/note_list/components/note_list_item.dart';
import 'package:note/presentation/note_list/note_list_view_model.dart';
import 'package:provider/provider.dart';

final class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NoteListViewModel>(
      builder: (context, viewModel, child) {
        return ListView.separated(
          itemBuilder: (context, index) {
            return SizedBox(
              height: 80,
              width: double.infinity,
              child: NoteListItem(
                onClick: () {
                  // push detail
                },
                onDelete: () {
                  viewModel.deleteAt(index);
                },
                title: viewModel.notes[index].title,
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
          itemCount: viewModel.notes.length,
        );
      }
    );
  }
}
