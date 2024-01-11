import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:note/presentation/note/components/color_picker.dart';
import 'package:note/presentation/note/components/save_button.dart';

final class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
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
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 40,
                          width: 100,
                          child: ColorPickerView(),
                        ),
                        SizedBox(width: 20,),
                        SizedBox(
                          height: 40,
                          width: 100,
                          child: ColorPickerView(),
                        ),
                      ],
                    ),
                    TextField(
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.amber,
                      ),
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: '제목을 입력하세요...',
                        hintStyle: TextStyle(
                          fontSize: 24,
                          color: Colors.amber.withOpacity(0.5),
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.amber,
                        ),
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: '내용을 입력하세요...',
                          hintStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.amber.withOpacity(0.5),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                  right: 0,
                  child: SaveButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
