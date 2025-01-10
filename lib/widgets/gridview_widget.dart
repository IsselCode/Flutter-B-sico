import 'package:flutter/material.dart';

class GridviewWidget extends StatelessWidget {
  const GridviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Número de columnas
        crossAxisSpacing: 10,
        mainAxisSpacing: 10
      ),
      itemCount: 6, // Número total de elementos
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://picsum.photos/200?random=$index"),
                fit: BoxFit.cover
              )
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(8)
                ),
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.only(bottom: 15),
                child: Text("Item ${index + 1}", style: const TextStyle(color: Colors.white),),
              ),
            ),
          ),
        );
      },
    );
  }

}
