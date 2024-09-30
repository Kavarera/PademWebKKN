import 'package:flutter/material.dart';

class CustomTexts {
  static TextStyle HEADING_1({color = Colors.black, shadow = false}) {
    return TextStyle(
      fontSize: 48,
      fontWeight: FontWeight.w700,
      color: color,
      shadows: shadow
          ? <Shadow>[
              Shadow(
                offset: Offset(3, 3),
                blurRadius: 2,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ]
          : null,
    );
  }

  static TextStyle HEADING_2({color = Colors.black, shadow = false}) {
    return TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.w700,
      color: color,
      shadows: shadow
          ? <Shadow>[
              Shadow(
                offset: Offset(3, 3),
                blurRadius: 2,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ]
          : null,
    );
  }

  static TextStyle HEADING_3({color = Colors.black, shadow = false}) {
    return TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: color,
      shadows: shadow
          ? <Shadow>[
              Shadow(
                offset: Offset(3, 3),
                blurRadius: 2,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ]
          : null,
    );
  }

  static TextStyle HEADING_4({color = Colors.black, shadow = false}) {
    return TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: color,
      shadows: shadow
          ? <Shadow>[
              Shadow(
                offset: Offset(3, 3),
                blurRadius: 2,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ]
          : null,
    );
  }

  static TextStyle CARD({color = Colors.black}) {
    return TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: color);
  }
}
