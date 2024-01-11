import 'package:flutter/material.dart';
import 'package:note/presentation/note/components/color_picker.dart';
import 'package:note/presentation/note/components/save_button.dart';
import 'package:note/presentation/note/note_view_model.dart';
import 'package:note/presentation/note_list/note_list_view_model.dart';
import 'package:provider/provider.dart';

final class NoteScreen extends StatelessWidget {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _contentController = TextEditingController();

  NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    _titleController = TextEditingController(text: context.read<NoteViewModel>().title);
    _contentController = TextEditingController(text: context.read<NoteViewModel>().content);
    return Consumer<NoteViewModel>(builder: (context, viewModel, child) {
      return Scaffold(
        backgroundColor: Color(viewModel.backgroundColor),
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: viewModel.backgroundColor == Colors.black.value ? Colors.white : Colors.black,
          ),
          backgroundColor: Colors.transparent,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 40,
                            width: 100,
                            child: ColorPickerView(
                              onPickedColor: (Color color) {
                                print(color);
                                viewModel.backgroundColor = color.value;
                              },
                              title: '배경',
                              color: Color(viewModel.backgroundColor),
                              fontColor: Color(viewModel.fontColor),
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          SizedBox(
                            height: 40,
                            width: 100,
                            child: ColorPickerView(
                              onPickedColor: (Color color) => viewModel.fontColor = color.value,
                              title: '폰트',
                              color: Color(viewModel.fontColor),
                              fontColor: Color(viewModel.fontColor),
                            ),
                          ),
                        ],
                      ),
                      TextField(
                        maxLines: 1,
                        controller: _titleController,
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(viewModel.fontColor),
                        ),
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: '제목을 입력하세요...',
                          hintStyle: TextStyle(
                            fontSize: 24,
                            color: Color(viewModel.fontColor).withOpacity(0.5),
                          ),
                        ),
                        onChanged: (value) {
                          viewModel.title = _titleController.text;
                        },
                      ),
                      Expanded(
                        child: TextField(
                          maxLines: 50,
                          controller: _contentController,
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(viewModel.fontColor),
                          ),
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintText: '내용을 입력하세요...',
                            hintStyle: TextStyle(
                              fontSize: 16,
                              color: Color(viewModel.fontColor).withOpacity(0.5),
                            ),
                          ),
                          onChanged: (value) {
                            viewModel.content = _contentController.text;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: SaveButton(
                    onClick: () async {
                      final result = await context.read<NoteViewModel>().save();
                      result.when(
                        success: (_) {
                          Navigator.pop(context);
                        },
                        error: (e) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                              e,
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                              ),
                            ),
                            duration: Duration(seconds: 1),
                          ));
                        },
                      );
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
}
