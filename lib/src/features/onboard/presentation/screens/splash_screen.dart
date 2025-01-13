import 'package:flutter/material.dart';
import 'package:rickandmorty_app/src/routes/routes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, NavigationRoutes.onboarding),
              child: Image.asset('assets/images/splash_black.gif', height: 180.0),
            )
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: Image.asset('assets/images/quiz_and_morty_logo.png', height: 45.0)
            )
          )
        ]
      )
    );
  }
}
