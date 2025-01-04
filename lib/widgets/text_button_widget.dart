import 'package:example/widgets/text_widget.dart';
import 'package:flutter/material.dart';


class TextButtonWidget extends StatelessWidget {

  String text;
  VoidCallback onPressed;
  bool enabled;

  TextButtonWidget({
    super.key,
    required this.text,
    required this.onPressed,
    required this.enabled,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: enabled ? onPressed : null,
      child: TextWidget(
        text: text,
      ),
    );
  }
}
