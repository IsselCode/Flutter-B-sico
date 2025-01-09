import 'package:example/screens/selected_widget_screen.dart';
import 'package:example/widgets/container_widget.dart';
import 'package:example/widgets/list_view_builder_widget.dart';
import 'package:example/widgets/list_view_separated_widget.dart';
import 'package:example/widgets/stack_widget.dart';
import 'package:flutter/material.dart';

class WidgetsScreen extends StatelessWidget {
  const WidgetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [

          ListTile(
            leading: const Icon(Icons.star),
            title: const Text("List View Builder"),
            onTap: () {

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const SelectedWidgetScreen(
                    text: 'List View Builder',
                    child: ListViewBuilderWidget());
                },)
              );

            },
          ),

          const Divider(),

          ListTile(
            leading: const Icon(Icons.star),
            title: const Text("List View Separated"),
            onTap: () {

              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const SelectedWidgetScreen(
                      text: "List View Separated",
                      child: ListViewSeparatedWidget(),
                    );
                  },)
              );

            },
          ),

          const Divider(),

          ListTile(
            leading: const Icon(Icons.star),
            title: const Text("Container"),
            onTap: () {

              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const SelectedWidgetScreen(
                      text: "Container",
                      child: ContainerWidget(),
                    );
                  },)
              );

            },
          ),

          const Divider(),

          ListTile(
            leading: const Icon(Icons.star),
            title: const Text("Stack"),
            onTap: () {

              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const SelectedWidgetScreen(
                      text: "Stack",
                      child: StackWidget(),
                    );
                  },)
              );

            },
          ),

        ],
      ),
    );
  }
}
