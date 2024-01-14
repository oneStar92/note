import 'package:flutter/material.dart';

final class ColorSettingItem extends StatelessWidget {
  final String _title;
  final Color _color;

  const ColorSettingItem({
    super.key,
    required String title,
    required Color color,
  })  : _title = title,
        _color = color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            _title,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ),
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _color,
          ),
        ),
      ],
    );
  }
}
