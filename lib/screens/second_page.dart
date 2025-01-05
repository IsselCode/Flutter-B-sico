import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {

            Navigator.pop(context, "¡Datos de regreso a HomePage!");

          },
          child: Text("Regresar a Home Page")
        ),
      ),
    );
  }
}
