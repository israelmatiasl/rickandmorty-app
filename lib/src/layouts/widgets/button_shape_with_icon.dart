import 'package:flutter/material.dart';
import 'package:rickandmorty_app/src/core/utils/palette.dart';

class ButtonShapeWithIcon extends StatelessWidget {

  final String text;
  final IconData icon;
  final VoidCallback onPressed;

  const ButtonShapeWithIcon({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)
        )
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: AppPalette.blackColor),
          SizedBox(width: 5.0),
          Text(text, style: TextStyle(fontWeight: FontWeight.bold))
        ]
      )
    );
  }
}
