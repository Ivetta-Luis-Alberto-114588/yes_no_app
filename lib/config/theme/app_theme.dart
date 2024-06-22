import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF49149F);

const List<Color> _colorThemes = [
  _customColor,
  Colors.black,
  Colors.blue,
  Colors.red,
  Colors.orange,
  Colors.green
];

class AppTheme{

  final int selectedColor;

  AppTheme(
    {
      this.selectedColor = 0
    })  :assert (
          selectedColor >= 0 && selectedColor < _colorThemes.length ,
            'el color debe ser mayor a 0 y menor a ${_colorThemes.length}') ;


  ThemeData theme(){
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      brightness: Brightness.dark
    );
  }
}