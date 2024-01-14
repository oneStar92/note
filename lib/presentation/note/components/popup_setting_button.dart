import 'package:flutter/material.dart';
import 'package:note/presentation/note/components/color_setting_item.dart';

enum SettingMenu {
  backgroundColor,
  fontColor,
}

final class PopupSettingButton extends StatelessWidget {
  final Function(SettingMenu) _onSelected;
  final Color _backgroundColor;
  final Color _fontColor;

  const PopupSettingButton({
    super.key,
    required Function(SettingMenu) onSelected,
    required Color backgroundColor,
    required Color fontColor,
  })  : _onSelected = onSelected,
        _backgroundColor = backgroundColor,
        _fontColor = fontColor;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<SettingMenu>(
      onSelected: _onSelected,
      itemBuilder: (context) {
        return [
          PopupMenuItem(
            value: SettingMenu.backgroundColor,
            child: ColorSettingItem(
              title: '배경색',
              color: _backgroundColor,
            ),
          ),
          PopupMenuItem(
            value: SettingMenu.fontColor,
            child: ColorSettingItem(
              title: '글자색',
              color: _fontColor,
            ),
          ),
        ];
      },
    );
  }
}
