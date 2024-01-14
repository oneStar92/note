import 'package:flutter/material.dart';
import 'package:note/di/view_model_provider.dart';
import 'package:note/presentation/note_list/components/add_button.dart';
import 'package:note/presentation/note_list/components/note_list_view.dart';
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
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Stack(
              children: [
                const Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: NoteListView(),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: AddButton(
                    onClick: () {
                      _pushNoteScreen(context: context).then((_) => viewModel.readAll());
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }

  Future<void> _pushNoteScreen({required BuildContext context}) {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => getNoteViewModelProvider(),
      ),
    );
  }
}
