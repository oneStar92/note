import 'package:flutter/material.dart';
import 'package:note/presentation/interface/base_view.dart';
import 'package:note/presentation/note_list/components/delete_button.dart';

final class NoteListItem extends BaseView {
  final Function() _onDelete;
  final String _title;
  final String _preview;
  final Color _backgroundColor;
  final Color _fontColor;

  const NoteListItem({
    super.key,
    super.onClick,
    required Function() onDelete,
    required String title,
    required String preview,
    required Color backgroundColor,
    required Color fontColor,
  })  : _fontColor = fontColor,
        _backgroundColor = backgroundColor,
        _preview = preview,
        _title = title,
        _onDelete = onDelete;

  @override
  Widget createContent(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: _backgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Text(
              _title,
              style: TextStyle(fontSize: 24, color: _fontColor, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
              maxLines: 1,
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    _preview,
                    style: TextStyle(fontSize: 16, color: _fontColor),
                    textAlign: TextAlign.left,
                    maxLines: 1,
                  ),
                ),
                DeleteButton(
                  onClick: _onDelete,
                  color: _fontColor,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
