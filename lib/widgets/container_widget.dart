import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 150,
        height: 150,
        // color: Colors.blue,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.6),
              blurRadius: 10,
              offset: Offset(5, 5),
            )
          ]
        ),
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.all(16),
        alignment: Alignment.center,
        child: Text("Container")
      ),
    );
  }
}
