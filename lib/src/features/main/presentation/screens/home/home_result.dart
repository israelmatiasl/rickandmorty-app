import 'package:flutter/material.dart';
import 'package:rickandmorty_app/src/core/utils/palette.dart';

class HomeResult extends StatelessWidget {
  const HomeResult({super.key});

  @override
  Widget build(BuildContext context) {

    final results = [
      {'category': 'Estado del personaje', 'score': '80%'},
      {'category': 'Especie del personaje', 'score': '70%'},
      {'category': 'Ubicación actual', 'score': '90%'},
      {'category': 'Ubicación actual', 'score': '90%'},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Últimos resultados',
          style: TextStyle(
            fontFamily: 'ComicNeue',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),

        ListView.builder(
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
        )
      ]
    );
  }
}
