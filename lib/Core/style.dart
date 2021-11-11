import 'package:flutter/material.dart';
import 'package:plant_store/Core/color.dart';

class Styles{
  static ThemeData themeData(){
    return ThemeData(
      primaryColor: Colors.green,
      scrollbarTheme: ScrollbarThemeData(
        thumbColor: MaterialStateProperty.all(green.withOpacity(0.5),),
        isAlwaysShown: true,
        mainAxisMargin: 200,
        radius: const Radius.circular(50.0),
        
      )
    );
  }
}