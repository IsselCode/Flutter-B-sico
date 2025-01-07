import 'package:flutter/material.dart';

class ListViewBuilderWidget extends StatelessWidget {
  const ListViewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.star),
          title: Text("Elemento ${index + 1}"),
          onTap: () {
            print("Elemento ${index + 1} seleccionado");
          },
        );
      },
    );
  }
}
