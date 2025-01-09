import 'package:flutter/material.dart';

class ExpandedFlexibleWidget extends StatelessWidget {
  const ExpandedFlexibleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Expanded(
          flex: 2,
          child: Container(
            color: Colors.purple,
            child: const Center(child: Text("Encabezado (2/5)"),),
          ),
        ),

        Flexible(
          flex: 3,
          child: Container(
            color: Colors.orange,
            child: const Center(child: Text("Contenido 3/5"),),
          ),
        ),

      ],
    );
  }
}
