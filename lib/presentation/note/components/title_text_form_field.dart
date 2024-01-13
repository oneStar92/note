import 'package:flutter/material.dart';

final class TitleTextFormField extends StatelessWidget {
  final String _hint = '제목을 입력하세요.';
  final TextEditingController? _textEditingController;
  final Function(String)? _onChanged;
  final Color _fontColor;

  const TitleTextFormField({
    super.key,
    required TextEditingController? textEditingController,
    required Function(String)? onChanged,
    required Color fontColor,
  })  : _textEditingController = textEditingController,
        _onChanged = onChanged,
        _fontColor = fontColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 1,
      maxLength: 20,
      controller: _textEditingController,
      style: TextStyle(
        fontSize: 24,
        color: _fontColor,
      ),
      textAlign: TextAlign.left,
      decoration: InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        hintText: _hint,
        hintStyle: TextStyle(
          fontSize: 24,
          color: _fontColor.withOpacity(0.5),
        ),
      ),
      onChanged: _onChanged,
    );
  }
}
