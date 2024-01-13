import 'package:flutter/material.dart';

final class ContentTextFormField extends StatelessWidget {
  final String _hint = '내용을 입력하세요.';
  final TextEditingController? _textEditingController;
  final Function(String)? _onChanged;
  final Color _fontColor;

  const ContentTextFormField({
    super.key,
    TextEditingController? textEditingController,
    Function(String)? onChanged,
    required Color fontColor,
  })  : _textEditingController = textEditingController,
        _onChanged = onChanged,
        _fontColor = fontColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: null,
      maxLength: 1000,
      expands: true,
      controller: _textEditingController,
      style: TextStyle(
        fontSize: 16,
        color: _fontColor,
      ),
      textAlign: TextAlign.left,
      decoration: InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        hintText: _hint,
        hintStyle: TextStyle(
          fontSize: 16,
          color: _fontColor.withOpacity(0.5),
        ),
      ),
      onChanged: _onChanged,
    );
  }
}
