import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

final class ColorPickerDialog extends StatelessWidget {
  final Function(Color color) onPickedColor;
  final Color _color;

  const ColorPickerDialog({
    super.key,
    required this.onPickedColor,
    required Color color,
  }) : _color = color;

  @override
  Widget build(BuildContext context) {
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
  }
}
