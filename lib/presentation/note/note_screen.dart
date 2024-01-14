import 'package:flutter/material.dart';
import 'package:note/presentation/note/components/color_picker_dialog.dart';
import 'package:note/presentation/note/components/content_text_form_field.dart';
import 'package:note/presentation/note/components/popup_setting_button.dart';
import 'package:note/presentation/note/components/title_text_form_field.dart';
import 'package:note/presentation/note/note_view_model.dart';
import 'package:provider/provider.dart';

final class NoteScreen extends StatefulWidget {
  const NoteScreen({super.key});

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  late final TextEditingController _titleController;
  late final TextEditingController _contentController;

  @override
  void initState() {
    _titleController = TextEditingController(text: context.read<NoteViewModel>().title);
    _contentController = TextEditingController(text: context.read<NoteViewModel>().content);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<NoteViewModel>(
      builder: (context, viewModel, child) {
        return Scaffold(
          backgroundColor: Color(viewModel.backgroundColor),
          appBar: AppBar(
            iconTheme: IconThemeData(
              color: Color(viewModel.borderColor),
            ),
            backgroundColor: Colors.transparent,
            scrolledUnderElevation: 0,
            actions: [
              IconButton(
                onPressed: () {
                  viewModel.save(
                    onError: (errorMessage) {
                      _showErrorSnackBar(context: context, errorMessage: errorMessage);
                    },
                  );
                },
                icon: const Icon(Icons.save),
              ),
              PopupSettingButton(
                onSelected: (menu) {
                  _showColorPickerDialog(
                    context: context,
                    onPickedColor: (color) => menu == SettingMenu.backgroundColor
                        ? viewModel.backgroundColor = color.value
                        : viewModel.fontColor = color.value,
                    color: menu == SettingMenu.backgroundColor
                        ? Color(viewModel.backgroundColor)
                        : Color(viewModel.fontColor),
                  );
                },
                backgroundColor: Color(viewModel.backgroundColor),
                fontColor: Color(viewModel.fontColor),
              )
            ],
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TitleTextFormField(
                    textEditingController: _titleController,
                    onChanged: (value) => viewModel.title = value,
                    fontColor: Color(viewModel.fontColor),
                  ),
                  Expanded(
                    child: ContentTextFormField(
                      textEditingController: _contentController,
                      onChanged: (value) => viewModel.content = value,
                      fontColor: Color(viewModel.fontColor),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _showColorPickerDialog(
      {required BuildContext context, required Function(Color) onPickedColor, required Color color}) {
    showDialog(
      context: context,
      builder: (context) {
        return ColorPickerDialog(
          onPickedColor: onPickedColor,
          color: color,
        );
      },
    );
  }

  void _showErrorSnackBar({required BuildContext context, required String errorMessage}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        errorMessage,
        style: const TextStyle(
          fontSize: 24,
          color: Colors.white,
        ),
      ),
      duration: const Duration(seconds: 1),
    ));
  }
}
