import 'package:flutter/material.dart';
import 'package:note/presentation/note_list/components/note_list_item.dart';

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
            onDelete: () {},
            title: 'Note Title',
            preview: 'Note Preview',
            backgroundColor: Colors.indigo,
            fontColor: Colors.amber,
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const Divider(
          color: Colors.transparent,
          height: 8.0,
        );
      },
      itemCount: 10,
    );
  }
}
