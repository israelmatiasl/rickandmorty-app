import 'package:flutter/material.dart';
import 'package:rickandmorty_app/src/core/utils/palette.dart';


class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {

  const HomeAppBar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppPalette.transparentColor,
      automaticallyImplyLeading: false,
      elevation: 0,
      title: Row(
        children: [
          Icon(Icons.person, color: AppPalette.iconActiveColor),
          const SizedBox(width: 8),
          const Text('¡Hola RickFanático!'),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}