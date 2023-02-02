import 'dart:math';
import 'package:flutter/material.dart';

class ColorNotifier extends ChangeNotifier {
  final rnd = Random();
  var _textColor = Color.fromARGB(255, 0, 0, 0);
  var _mainColor = Color.fromARGB(255, 255, 255, 255);

  Color get mainColor => _mainColor;
  Color get textColor => _textColor;

  void changeColor() {
    int alpha = rnd.nextInt(256);
    int red = rnd.nextInt(256);
    int green = rnd.nextInt(256);
    int blue = rnd.nextInt(256);

    _mainColor = Color.fromARGB(255, red, green, blue);
    _textColor = Color.fromARGB(
        255, 255 - red, 255 - green, 255 - blue); // color opposite to base

    notifyListeners();
  }
}
