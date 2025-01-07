import 'package:example/screens/dashboard_screen.dart';
import 'package:example/screens/edit_screen.dart';
import 'package:example/screens/home_page.dart';
import 'package:example/screens/login_screen.dart';
import 'package:example/screens/second_page.dart';
import 'package:example/screens/welcome_screen.dart';
import 'package:example/screens/widgets_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const WidgetsScreen()
      // initialRoute: "/",
      // routes: {
      //   "/": (context) => const WelcomeScreen(), // pushReplacement
      //   "/login": (context) => const LoginScreen(), // pushAndRemoveUntil
      //   "/dashboard": (context) => const DashboardScreen() // popUntil
      // },
    );
  }
}
