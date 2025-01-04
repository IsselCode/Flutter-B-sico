import 'package:example/widgets/elevated_button_widget.dart';
import 'package:example/widgets/filled_button_widget.dart';
import 'package:example/widgets/outlined_button_widget.dart';
import 'package:example/widgets/text_button_widget.dart';
import 'package:flutter/material.dart';

class ButtonsTypesGroupWidget extends StatelessWidget {

  bool enabled;

  ButtonsTypesGroupWidget({
    super.key,
    required this.enabled,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

        ElevatedButtonWidget(
          text: "Elevated",
          onPressed: () {},
          enabled: enabled
        ),

        FilledButtonWidget(
          text: "Filled",
          onPressed: () {},
          enabled: enabled
        ),

        FilledButtonWidget.tonal(
          text: "Filled Tonal",
          onPressed: () {},
          enabled: enabled
        ),

        OutlinedButtonWidget(
          text: "Outlined",
          onPressed: () {},
          enabled: enabled
        ),

        TextButtonWidget(
          text: "Text",
          onPressed: () {},
          enabled: enabled
        )

      ],
    );
  }
}
