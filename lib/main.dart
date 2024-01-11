import 'package:flutter/material.dart';
import 'package:note/di/view_model_provider.dart';

void main() {
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
