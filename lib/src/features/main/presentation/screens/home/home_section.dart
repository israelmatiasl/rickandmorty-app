import 'package:flutter/material.dart';
import 'package:rickandmorty_app/src/core/utils/palette.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final double heightA = 120.0;


    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '¿Listo para un nuevo desafío?',
          style: TextStyle(
            fontFamily: 'ComicNeue',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Card(
                      color: AppPalette.cardBackgroundColor,
                      margin: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0)
                      ),
                      child: InkWell(
                        onTap: () => print('Categorías'),
                        borderRadius: BorderRadius.circular(12.0),
                        splashColor: AppPalette.splashColor,
                        highlightColor: Colors.transparent,
                        splashFactory: InkRipple.splashFactory,
                        child: SizedBox(
                          height: heightA,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text('🪐', style: TextStyle(fontSize: 40.0)),
                                  SizedBox(height: 5.0),
                                  Text('Categorías')
                                ]
                              )
                            ]
                          )
                        )
                      )
                    )
                  ),

                  SizedBox(height: 10),

                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Card(
                      color: AppPalette.cardBackgroundColor,
                      margin: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0)
                      ),
                      child: InkWell(
                        onTap: () => print('Random Quiz'),
                        borderRadius: BorderRadius.circular(12.0),
                        splashColor: AppPalette.splashColor,
                        highlightColor: Colors.transparent,
                        splashFactory: InkRipple.splashFactory,
                        child: SizedBox(
                          height: heightA,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text('🎲', style: TextStyle(fontSize: 40.0)),
                                  SizedBox(height: 5.0),
                                  Text('Random Quiz')
                                ]
                              )
                            ]
                          )
                        )
                      )
                    )
                  )
                ]
              )
            ),

            SizedBox(width: 10),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(
                  color: AppPalette.cardBackgroundColor,
                  margin: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: InkWell(
                    onTap: () => print('Tomar Quiz'),
                    borderRadius: BorderRadius.circular(12.0),
                    splashColor: AppPalette.splashColor,
                    highlightColor: Colors.transparent,
                    splashFactory: InkRipple.splashFactory,
                    child: SizedBox(
                      height: 2 * heightA + 18,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text('🧪', style: TextStyle(fontSize: 40.0)),
                              SizedBox(height: 5.0),
                              Text('Tomar Quiz'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ]
        )
      ],
    );
  }
}