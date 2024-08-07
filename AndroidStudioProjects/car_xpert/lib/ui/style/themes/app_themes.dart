import 'package:flutter/material.dart';

class AppThemes {
  final ThemeData lightMode = ThemeData(
      brightness: Brightness.light,
      colorScheme: ColorScheme.light(
        inverseSurface: Colors.grey[500],
        background: Color.fromARGB(255, 255, 255, 255),
        onBackground: Color.fromARGB(255, 240, 240, 240),// اغمق من  الخلفية بشوي
        primary: Color(0xff6d944f),// for buttons
        secondary: Color(0xff1b64c0),
        onSecondary: Colors.grey.shade700,// for icons
        tertiary: Color.fromARGB(255, 140, 140, 141),// for borders
        onTertiary: Colors.grey[400],
        inversePrimary: Colors.grey.shade200, // for text
         onSurface: Colors.black,
        error: Color.fromARGB(255, 238, 37, 37),
      ));

  final ThemeData darkMode = ThemeData(
      brightness: Brightness.dark,
      colorScheme: ColorScheme.dark(
        inverseSurface: Colors.grey[200],
        background: Color.fromARGB(255, 54, 57, 61),
        onBackground: Color.fromARGB(255, 50, 53, 57),
        primary: Color(0xff6d944f),// for buttons
        secondary: Color(0xff1856a8),
        onSecondary: Colors.grey.shade300,// for icons
        tertiary: Color.fromARGB(255, 140, 140, 141),
        onTertiary: Colors.grey[900],// for borders
        inversePrimary: Colors.grey.shade300, // for text
            onSurface: Colors.white,
        error: Color.fromARGB(255, 238, 37, 37),
      ));
}
