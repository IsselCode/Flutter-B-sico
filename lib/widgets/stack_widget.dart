import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [

          // Fondo container
          Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [

                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  blurRadius: 10,
                  offset: const Offset(5, 5)
                )

              ]
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              child: Text(
                "Perfil de Usuario",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),

          // Avatar
          Positioned(
            top: -30,
            left: 120,
            right: 120,
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.circular(999),
                shape: BoxShape.circle
              ),
              child: const Icon(Icons.person, size: 30, color: Colors.blue,),
            )
          ),

          // Botón
          Positioned(
            bottom: 10,
            right: 10,
            left: 10,
            child: ElevatedButton(
              onPressed: () {
                print("Botón presionado");
              },
              child: const Text("Acción")
            )
          )

        ],
      ),
    );
  }
}
