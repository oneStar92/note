import 'package:flutter/material.dart';
import 'package:note/presentation/interface/base_view.dart';

final class AddButton extends BaseView {
  const AddButton({
    super.key,
    super.onClick,
  });

  @override
  Widget createContent(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      padding: const EdgeInsets.all(15),
      child: const FittedBox(
        child: Icon(Icons.add),
      ),
    );
  }
}
