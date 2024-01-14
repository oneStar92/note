import 'package:flutter/material.dart';

abstract class BaseView extends StatelessWidget {
  final Function()? _onClick;

  Widget createContent(BuildContext context);

  const BaseView({
    super.key,
    Function()? onClick,
  }) : _onClick = onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _onClick?.call(),
      child: createContent(context),
    );
  }
}