import 'package:flutter/material.dart';
import 'package:rickandmorty_app/src/features/main/presentation/screens/home_screen.dart';
import 'package:rickandmorty_app/src/features/onboard/presentation/screens/onboarding_screen.dart';
import 'package:rickandmorty_app/src/features/onboard/presentation/screens/splash_screen.dart';

class NavigationRoutes {
  static const String splash = '/';
  static const String onboarding = '/onboarding';
  static const String home = '/home';
  static const String quiz = '/quiz';
}

Route<dynamic> generateRoute(RouteSettings settings) {
  switch(settings.name) {
    case NavigationRoutes.splash: return MaterialPageRoute(builder: (_) => const SplashScreen());
    case NavigationRoutes.onboarding: return MaterialPageRoute(builder: (_) => const OnboardingScreen());
    case NavigationRoutes.home: return MaterialPageRoute(builder: (_) => const HomeScreen());
    default: throw 'Invalid route';
  }
}