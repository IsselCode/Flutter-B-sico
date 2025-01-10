import 'package:flutter/material.dart';

class SelectedWidgetScreen extends StatelessWidget {

  final String text;
  final Widget child;

  const SelectedWidgetScreen({
    super.key,
    required this.child,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(text),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => print("Buscar presionado"),
            icon: const Icon(Icons.search)
          ),
          IconButton(
            onPressed: () => print("Notificación presionado"),
            icon: const Icon(Icons.notifications, color: Colors.white,)
          )
        ],
      ),
      body: child,
    );
  }
}
