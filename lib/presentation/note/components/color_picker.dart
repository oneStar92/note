import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

final class ColorPickerView extends StatefulWidget {
  const ColorPickerView({super.key});

  @override
  State<ColorPickerView> createState() => _ColorPickerViewState();
}

class _ColorPickerViewState extends State<ColorPickerView> {
  Color _color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            '배경',
            style: TextStyle(
              fontSize: 24,
              color: Colors.amber,
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
                      onColorChanged: (Color value) {
                        setState(() {
                          _color = value;
                        });
                      },
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
            decoration: BoxDecoration(shape: BoxShape.circle, color: _color),
          ),
        ),
      ],
    );
  }
}
