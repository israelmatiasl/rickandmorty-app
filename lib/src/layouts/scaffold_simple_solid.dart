import 'package:flutter/material.dart';

class ScaffoldSimpleSolid extends StatelessWidget {

  final Widget body;
  final double paddingHorizontal;

  const ScaffoldSimpleSolid({
    super.key,
    required this.body,
    this.paddingHorizontal = 0.0
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: paddingHorizontal),
        child: body
      )
    );
  }
}
