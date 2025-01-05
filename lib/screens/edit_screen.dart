import 'package:example/widgets/text_button_widget.dart';
import 'package:flutter/material.dart';

class EditScreen extends StatelessWidget {
  const EditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) async {

        if (didPop) {
          return ;
        }

        print("Intento de cerrar la pantalla. Resultado propuesto $result");

        if (result == null) {

          final shouldLeave = await showDialog<bool>(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text("¿Salir sin guardar?"),
              content: const Text("Tienes cambios sin guardar. ¿Quieres salir?"),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, false); // Cierra el diálogo
                  },
                  child: const Text("Cancelar")
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, true); // Confirma la salida
                  },
                  child: const Text("Salir")
                )
              ],
            ),
          );

          // Si el usuario confirma salir, cerramos la pantalla con un resultado
          if (shouldLeave ?? false){
            Navigator.maybePop(context, "Cambios descartados");
          } else {
            return ;
          }

        } {
          Navigator.maybePop(context, result);
        }

      },
      child: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.maybePop(context, "Guardado con exito");
            },
            child: const Text("Guardar y Salir")
          ),
        ),
      )
    );
  }
}
