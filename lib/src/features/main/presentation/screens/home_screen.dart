import 'package:flutter/material.dart';
import 'package:rickandmorty_app/src/core/utils/palette.dart';
import 'package:rickandmorty_app/src/features/main/presentation/screens/home/home_app_bar.dart';
import 'package:rickandmorty_app/src/features/main/presentation/screens/home/home_resume.dart';
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



        const Text(
          'Categorías de Juegos',
          style: TextStyle(
            fontFamily: 'ComicNeue',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        _buildCategoriesSection(),

        ElevatedButton(
          onPressed: () { },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppPalette.secondaryButtonColor,
          ),
          child: const Text('Categoría Aleatoria'),
        ),

        ElevatedButton(
          onPressed: () { },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppPalette.primaryButtonColor,
            minimumSize: const Size(double.infinity, 50),
          ),
          child: const Text('Empezar con el Test'),
        ),

        const Text(
          'Últimos Resultados',
          style: TextStyle(
            fontFamily: 'ComicNeue',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        _buildResultsSection(),
      ],
    );
  }

  Widget _buildPaddingContent() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Sección: Continuar Partida

            const SizedBox(height: 24),

            // Sección: Categorías de Juegos
            const Text(
              'Categorías de Juegos',
              style: TextStyle(
                fontFamily: 'ComicNeue',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            _buildCategoriesSection(),

            const SizedBox(height: 24),

            // Botón: Categoría Aleatoria
            ElevatedButton(
              onPressed: () {
                // Acción para seleccionar categoría aleatoria
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppPalette.secondaryButtonColor,
              ),
              child: const Text('Categoría Aleatoria'),
            ),

            const SizedBox(height: 24),

            // Botón: Empezar con el Test
            ElevatedButton(
              onPressed: () {
                // Acción para empezar el test
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppPalette.primaryButtonColor,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text('Empezar con el Test'),
            ),

            const SizedBox(height: 24),

            // Sección: Resultados Obtenidos
            const Text(
              'Últimos Resultados',
              style: TextStyle(
                fontFamily: 'ComicNeue',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            _buildResultsSection(),
          ],
        ),
      ),
    );
  }


  // Widget: Categorías de Juegos
  Widget _buildCategoriesSection() {
    final categories = [
      {'title': 'Estado del personaje', 'description': 'Alive, Dead, Unknown'},
      {'title': 'Especie del personaje', 'description': 'Human, Alien, etc.'},
      {'title': 'Origen del personaje', 'description': 'Earth (C-137), etc.'},
      {'title': 'Primera aparición', 'description': 'Primer episodio'},
      {'title': 'Ubicación actual', 'description': 'Lugar de residencia'},
      {'title': 'Combinación', 'description': 'Todas las anteriores'},
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 3 / 2,
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final category = categories[index];
        return Card(
          color: AppPalette.cardBackgroundColor,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category['title']!,
                  style: const TextStyle(
                    fontFamily: 'ComicNeue',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  category['description']!,
                  style: const TextStyle(
                    fontFamily: 'RobotoMono',
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // Widget: Resultados Obtenidos
  Widget _buildResultsSection() {
    final results = [
      {'category': 'Estado del personaje', 'score': '80%'},
      {'category': 'Especie del personaje', 'score': '70%'},
      {'category': 'Ubicación actual', 'score': '90%'},
    ];

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: results.length,
      itemBuilder: (context, index) {
        final result = results[index];
        return ListTile(
          leading: Icon(Icons.check_circle, color: AppPalette.iconActiveColor),
          title: Text(
            result['category']!,
            style: const TextStyle(
              fontFamily: 'ComicNeue',
              fontSize: 16,
            ),
          ),
          trailing: Text(
            result['score']!,
            style: const TextStyle(
              fontFamily: 'RobotoMono',
              fontSize: 14,
            ),
          ),
        );
      },
    );
  }
}
