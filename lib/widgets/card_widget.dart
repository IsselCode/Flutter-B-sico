import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 4,
        margin: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://picsum.photos/200"),
              ),
              title: Text("Nombre del usuario"),
              subtitle: Text("Descripcion breve del usuario"),
            ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                "Esta es una descripción más detallada que proporciona información "
                "adicional sobre el usuario o el contenido de esta tarjeta.",
                textAlign: TextAlign.justify,
              ),
            ),

            OverflowBar(
              alignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => print("Acción 1 presionado"),
                  child: Text("Acción 1")
                ),
                TextButton(
                    onPressed: () => print("Acción 2 presionado"),
                    child: Text("Acción 2")
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}
