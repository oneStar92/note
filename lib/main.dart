import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note/data/repository/hive_note_repository.dart';
import 'package:note/di/view_model_provider.dart';
import 'package:note/domain/model/note.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteImplAdapter());
  await HiveNoteRepository.shared.configureBox();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Note App',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: noteListViewModelProvider,
    );
  }
}
