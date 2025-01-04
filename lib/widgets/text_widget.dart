import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {

  String text;

  TextWidget({
    super.key,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        // letterSpacing: 10,
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black
      ),
      textAlign: TextAlign.center,
      // maxLines: 2,
      // overflow: TextOverflow.ellipsis,
      textScaler: const TextScaler.linear(1),
    );
  }
}
