import 'package:flutter/material.dart';

const List<Color> colorTheme = [
  Color.fromRGBO(255, 0, 0, 100),
  Color.fromRGBO(0, 0, 255, 100),
  Color.fromRGBO(0, 255, 0, 100),
  Color.fromRGBO(255, 150, 0, 100),
  Color.fromRGBO(255, 255, 0, 100),
  Color.fromRGBO(191, 35, 162, 0.612)
];
///Clase que permite el cambio de color del tema de la app
class AppTheme
{
  int selectedColor;
  AppTheme({this.selectedColor=0});
  ///Metodo que pinta el background de la app usando una lista de colores
  ThemeData theme()
  {
      if(selectedColor>colorTheme.length || selectedColor<0)
      {
        selectedColor = 0;
      }
      return ThemeData(useMaterial3: true, colorSchemeSeed: colorTheme[selectedColor]);
  }
}