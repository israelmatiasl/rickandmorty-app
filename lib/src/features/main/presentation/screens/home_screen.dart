import 'package:flutter/material.dart';
import 'package:rickandmorty_app/src/core/utils/palette.dart';
import 'package:rickandmorty_app/src/features/main/presentation/screens/home/home_app_bar.dart';
import 'package:rickandmorty_app/src/features/main/presentation/screens/home/home_result.dart';
import 'package:rickandmorty_app/src/features/main/presentation/screens/home/home_resume.dart';
import 'package:rickandmorty_app/src/features/main/presentation/screens/home/home_section.dart';
import 'package:rickandmorty_app/src/layouts/scaffold_scroll_solid.dart';
import 'package:rickandmorty_app/src/layouts/scaffold_simple_solid.dart';
import 'package:rickandmorty_app/src/routes/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldScrollSolid(
      appBar: HomeAppBar(),
      spaceBetweenContent: 24.0,
      content: [

        HomeResume(),

        HomeSection(),

        HomeResult(),
      ],
    );
  }

  void _buildCategoriesSection() {
    final categories = [
      {'title': 'Estado del personaje', 'description': 'Alive, Dead, Unknown'},
      {'title': 'Especie del personaje', 'description': 'Human, Alien, etc.'},
      {'title': 'Origen del personaje', 'description': 'Earth (C-137), etc.'},
      {'title': 'Primera aparición', 'description': 'Primer episodio'},
      {'title': 'Ubicación actual', 'description': 'Lugar de residencia'},
      {'title': 'Combinación', 'description': 'Todas las anteriores'},
    ];
  }
}
