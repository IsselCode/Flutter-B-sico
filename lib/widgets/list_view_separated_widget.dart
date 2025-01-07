import 'package:flutter/material.dart';

class ListViewSeparatedWidget extends StatelessWidget {
  const ListViewSeparatedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      separatorBuilder: (context, index) {
        return const Divider();
      },
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
