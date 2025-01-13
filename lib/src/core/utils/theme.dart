import 'package:flutter/material.dart';
import 'package:rickandmorty_app/src/core/utils/palette.dart';

final ThemeData rickAndMortyTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppPalette.backgroundColor, // Fondo principal
  appBarTheme: AppBarTheme(
    backgroundColor: AppPalette.appBarColor, // Color del AppBar
    iconTheme: IconThemeData(color: AppPalette.iconActiveColor), // Iconos del AppBar
    titleTextStyle: TextStyle(
      fontFamily: 'ComicNeue',
      color: AppPalette.textColor,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(
      fontFamily: 'ComicNeue', // Fuente principal
      color: AppPalette.textColor,
      fontSize: 16,
      fontWeight: FontWeight.normal,
    ),
    titleLarge: TextStyle(
      fontFamily: 'ComicNeue', // Fuente para títulos principales
      color: AppPalette.titleColor,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    // Fuentes para el Juego
    bodyMedium: TextStyle(
      fontFamily: 'RobotoMono', // Fuente para preguntas y opciones
      color: AppPalette.textColor,
      fontSize: 16,
      fontWeight: FontWeight.normal,
    ),
    labelLarge: TextStyle(
      fontFamily: 'RobotoMono', // Fuente para etiquetas
      color: AppPalette.textColor,
      fontSize: 14,
      fontWeight: FontWeight.w300,
    )
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppPalette.primaryButtonColor, // Botón primario
      foregroundColor: AppPalette.backgroundColor, // Letras del botón
      disabledBackgroundColor: AppPalette.disabledButtonColor, // Botón deshabilitado
      disabledForegroundColor: AppPalette.iconInactiveColor, // Letras botón deshabilitado
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppPalette.inputBorderInactiveColor), // Borde inactivo
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppPalette.inputBorderActiveColor), // Borde activo
    ),
    labelStyle: TextStyle(
      fontFamily: 'ComicNeue', // Fuente para labels de inputs
      color: AppPalette.inputTextColor,
    ),
    hintStyle: TextStyle(
      fontFamily: 'RobotoMono', // Fuente para hints en inputs
      color: AppPalette.inputPlaceholderColor,
    ),
  ),
  iconTheme: IconThemeData(
    color: AppPalette.iconActiveColor, // Iconos activos
  ),
);