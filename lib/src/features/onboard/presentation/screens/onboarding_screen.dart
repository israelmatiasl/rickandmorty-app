import 'package:flutter/material.dart';
import 'package:rickandmorty_app/src/layouts/scaffold_simple_solid.dart';
import 'package:rickandmorty_app/src/routes/routes.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldSimpleSolid(
      paddingHorizontal: 25.0,
      body: Column(
        children: [
          _imageOnboarding(),
          _textOnboarding(),
          _buttonOnboarding(context)
        ],
      ),
    );
  }

  Widget _imageOnboarding() {
    return Expanded(
      flex: 3,
      child: Container(
        alignment: Alignment.center,
        child: Image.asset('assets/images/intro_logo.png', width: 250,),
      ),
    );
  }

  Widget _textOnboarding() {
    return Expanded(
      flex: 2,
      child: Container(
        alignment: Alignment.center,
        child: Text(
          'Viaja por el multiverso y prueba que eres un verdadero genio Rickstacular',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }

  Widget _buttonOnboarding(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        alignment: Alignment.center,
        child: ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, NavigationRoutes.home),
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
          ),
          child: Text('EMPEZAR AHORA', style: TextStyle(fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}


