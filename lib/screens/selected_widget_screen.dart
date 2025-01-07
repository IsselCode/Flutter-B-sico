import 'package:flutter/material.dart';

class SelectedWidgetScreen extends StatelessWidget {

  final Widget child;

  const SelectedWidgetScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: child,
    );
  }
}
