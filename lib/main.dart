import 'package:flutter/material.dart';
import 'package:rickandmorty_app/src/core/services/dependency_injection.dart';
import 'package:rickandmorty_app/src/core/utils/theme.dart';
import 'package:rickandmorty_app/src/routes/routes.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await initDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz And Morty',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: rickAndMortyTheme,
      initialRoute: NavigationRoutes.splash,
      onGenerateRoute: generateRoute,
    );
  }
}
