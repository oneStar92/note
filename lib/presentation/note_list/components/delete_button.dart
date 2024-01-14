import 'package:flutter/material.dart';
import 'package:note/core/view/base_view.dart';

final class DeleteButton extends BaseView {
  final Color _color;

  const DeleteButton({
    super.key,
    super.onClick,
    required Color color,
  }) : _color = color;

  @override
  Widget createContent(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SizedBox(
        height: constraints.maxHeight,
        width: constraints.maxHeight,
        child: Icon(
          Icons.delete,
          color: _color,
        ),
      );
    });
  }
}
