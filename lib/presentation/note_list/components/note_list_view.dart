import 'package:flutter/material.dart';
import 'package:note/presentation/note_list/components/note_list_item.dart';
import 'package:note/presentation/note_list/note_list_view_model.dart';
import 'package:provider/provider.dart';

final class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
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
              context.read<NoteListViewModel>().deleteAt(index);
            },
            title: context.read<NoteListViewModel>().notes[index].title,
            preview: context.read<NoteListViewModel>().previewAt(index),
            backgroundColor: Color(context.read<NoteListViewModel>().notes[index].hexColor),
            fontColor: Color(context.read<NoteListViewModel>().notes[index].hexFontColor),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const Divider(
          color: Colors.transparent,
          height: 8.0,
        );
      },
      itemCount: context.read<NoteListViewModel>().notes.length,
    );
  }
}
