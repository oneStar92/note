import 'package:flutter/material.dart';
import 'package:note/di/view_model_provider.dart';
import 'package:note/presentation/note_list/components/add_button.dart';
import 'package:note/presentation/note_list/components/note_list_view.dart';
import 'package:note/presentation/note_list/note_list_view_model.dart';
import 'package:provider/provider.dart';

final class NoteListScreen extends StatefulWidget {
  const NoteListScreen({super.key});

  @override
  State<NoteListScreen> createState() => _NoteListScreenState();
}

class _NoteListScreenState extends State<NoteListScreen> with RouteAware {
  @override
  void initState() {
    context.read<NoteListViewModel>().readAll();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                    _pushNoteScreen();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _pushNoteScreen() async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => getNoteViewModelProvider(),
      ),
    );
    context.read<NoteListViewModel>().readAll();
  }
}
