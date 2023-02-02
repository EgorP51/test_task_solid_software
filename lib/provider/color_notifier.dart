import 'dart:math';
import 'package:flutter/material.dart';

class ColorNotifier extends ChangeNotifier {
  final rnd = Random();
  var _textColor = Color.fromARGB(255, 0, 0, 0);
  var _mainColor = Color.fromARGB(255, 255, 255, 255);
  var _text = 'Hey there!';

  Color get mainColor => _mainColor;
  Color get textColor => _textColor;
  String get text => _text;

  set text(String newText) {
    _text = newText;
    notifyListeners();
  }

  void changeColor() {
    int alpha = 255;
    int red = rnd.nextInt(256);
    int green = rnd.nextInt(256);
    int blue = rnd.nextInt(256);

    _mainColor = Color.fromARGB(alpha, red, green, blue);
    _textColor = Color.fromARGB(
        alpha, 255 - red, 255 - green, 255 - blue); // color opposite to base

    notifyListeners();
  }
}
