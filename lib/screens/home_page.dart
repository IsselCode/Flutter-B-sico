import 'package:flutter/material.dart';

import 'second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {

            // final resultado = await Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => const SecondPage(),)
            // );

            final resultado = await Navigator.pushNamed(context, "/edit-screen");

            print("Resultado recibido: $resultado");

          },
          child: Text("Ir a la segunda página")
        ),
      ),
    );
  }
}
