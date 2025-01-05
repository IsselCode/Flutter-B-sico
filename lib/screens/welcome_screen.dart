import 'package:example/screens/login_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(title: Text("Welcome Screen"),),
      body: Center(
        child: ElevatedButton(
          onPressed: () {

            // Navigator.pushNamed(
            //   context,
            //   "/login"
            // );

            Navigator.push(
              context,
              PageRouteBuilder(
                transitionDuration: const Duration(seconds: 1),
                pageBuilder: (context, animation, secondaryAnimation) => const LoginScreen(),
                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  return FadeTransition(
                    opacity: animation,
                    child: SlideTransition(
                      position: animation.drive(
                        Tween(begin: const Offset(1.0, 0.0), end: Offset.zero)
                            .chain(CurveTween(curve: Curves.easeInOutCirc))
                      ),
                      child: child,
                    ),
                  );
                },
              )
            );

          },
          child: Text("Ir al Login")
        ),
      ),
    );
  }
}
