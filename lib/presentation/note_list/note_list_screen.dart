import 'package:flutter/material.dart';
import 'package:note/presentation/note_list/components/add_button.dart';
import 'package:note/presentation/note_list/components/note_list_view.dart';

class NoteListScreen extends StatelessWidget {
  const NoteListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'My Note',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.black,
        centerTitle: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                child: NoteListView(),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: AddButton(onClick: (){},),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
