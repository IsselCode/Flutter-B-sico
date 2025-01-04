import 'package:example/widgets/buttons_types_group_widget.dart';
import 'package:flutter/material.dart';

class SampleButtonsScreen extends StatelessWidget {
  const SampleButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          ButtonsTypesGroupWidget(enabled: true),

          const SizedBox(width: 10,),

          ButtonsTypesGroupWidget(enabled: false),

        ],
      ),
    );
  }
}
