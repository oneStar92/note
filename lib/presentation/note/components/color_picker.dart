import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

final class ColorPickerView extends StatelessWidget {
  final String _title;
  final Color _color;
  final Color _fontColor;
  final Function(Color color) onPickedColor;

  const ColorPickerView({
    super.key,
    required this.onPickedColor,
    required String title,
    required Color color,
    required Color fontColor,
  })  : _title = title,
        _color = color,
        _fontColor = fontColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            _title,
            style: TextStyle(
              fontSize: 24,
              color: _fontColor,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  titlePadding: const EdgeInsets.all(0),
                  contentPadding: const EdgeInsets.all(0),
                  content: SingleChildScrollView(
                    child: ColorPicker(
                      pickerColor: _color,
                      onColorChanged: onPickedColor,
                      colorPickerWidth: 300,
                      pickerAreaHeightPercent: 0.7,
                      enableAlpha: true,
                      labelTypes: ColorLabelType.values,
                      displayThumbColor: false,
                      paletteType: PaletteType.hueWheel,
                      pickerAreaBorderRadius: BorderRadius.circular(2),
                      hexInputBar: true,
                    ),
                  ),
                );
              },
            );
          },
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _color,
              border: Border.all(color: _color == Colors.black ? Colors.white : Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
