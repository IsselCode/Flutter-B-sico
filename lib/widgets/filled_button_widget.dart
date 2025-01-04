import 'package:example/widgets/text_widget.dart';
import 'package:flutter/material.dart';


class FilledButtonWidget extends StatelessWidget {

  String text;
  VoidCallback onPressed;
  bool enabled;
  bool tonal = false;

  FilledButtonWidget({
    super.key,
    required this.text,
    required this.onPressed,
    required this.enabled
  });

  FilledButtonWidget.tonal({
    super.key,
    required this.text,
    required this.onPressed,
    required this.enabled
  }){
    tonal = true;
  }

  @override
  Widget build(BuildContext context) {

    if (tonal)
    return FilledButton.tonal(
      onPressed: enabled ? onPressed : null,
      child: TextWidget(
        text: text,
      ),
    );

    return FilledButton(
      onPressed: enabled ? onPressed : null,
      child: TextWidget(
        text: text,
      ),
    );

  }
}
