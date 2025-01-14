import 'package:flutter/material.dart';
import 'package:rickandmorty_app/src/core/utils/palette.dart';
import 'package:rickandmorty_app/src/layouts/widgets/button_shape_with_icon.dart';

class HomeResume extends StatelessWidget {
  const HomeResume({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppPalette.cardBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 2,
              child: Image.asset('assets/images/icons/resume.png', fit: BoxFit.fitWidth),
            ),
            SizedBox(width: 32.0),
            Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Última Partida',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text('Progreso:'),
                  Text('10/20 preguntas'),
                  SizedBox(height: 20),
                  ButtonShapeWithIcon(
                    text: 'CONTINUAR',
                    icon: Icons.play_arrow,
                    onPressed: () { },
                  )
                ]
              )
            )
          ]
        )
      )
    );
  }
}
