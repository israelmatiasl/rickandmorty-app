

import 'package:flutter/material.dart';

abstract class AppPalette {
  static const blackColor = Colors.black;
  static const whiteColor = Colors.white;
  static const transparentColor = Colors.transparent;
  static const backgroundColor = Color.fromRGBO(18, 18, 18, 1); // Fondo principal
  static const appBarColor = Color.fromRGBO(30, 30, 30, 1); // AppBar
  static const textColor = Color.fromRGBO(224, 224, 224, 1); // Cuerpo de texto
  static const titleColor = Color.fromRGBO(129, 212, 250, 1); // Títulos
  static const primaryButtonColor = Color.fromRGBO(3, 218, 197, 1); // Botón primario
  static const secondaryButtonColor = Color.fromRGBO(187, 134, 252, 1); // Botón secundario
  static const disabledButtonColor = Color.fromRGBO(60, 60, 60, 1); // Botón deshabilitado
  static const alertSuccessColor = Color.fromRGBO(76, 175, 80, 1); // Fondo alerta éxito
  static const alertWarningColor = Color.fromRGBO(255, 152, 0, 1); // Fondo alerta aviso
  static const alertErrorColor = Color.fromRGBO(244, 67, 54, 1); // Fondo alerta error
  static const alertTextColor = Color.fromRGBO(255, 255, 255, 1); // Letras de alerta
  static const iconActiveColor = Color.fromRGBO(3, 218, 197, 1); // Iconos activos
  static const iconInactiveColor = Color.fromRGBO(117, 117, 117, 1); // Iconos inactivos
  static const inputTextColor = Color.fromRGBO(224, 224, 224, 1); // Texto inputs
  static const inputPlaceholderColor = Color.fromRGBO(117, 117, 117, 1); // Placeholder inputs
  static const inputBorderActiveColor = Color.fromRGBO(3, 218, 197, 1); // Bordes activos
  static const inputBorderInactiveColor = Color.fromRGBO(60, 60, 60, 1); // Bordes inactivos
  static const cardBackgroundColor = Color.fromRGBO(36, 41, 54, 1); // Fondo de tarjetas
}