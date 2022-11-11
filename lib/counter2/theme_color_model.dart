import 'package:flutter/material.dart';

class ThemeColorModel with ChangeNotifier {
  Color _color = Colors.blue[100]!;
  Color get color => _color;

  Color red = const Color.fromRGBO(237, 115, 88, 1);
  Color yellow = const Color.fromRGBO(242, 220, 139, 1);
  Color green = const Color.fromRGBO(172, 201, 131, 1);
  Color blue = const Color.fromRGBO(134, 197, 207, 1);
  Color purple = const Color.fromRGBO(123, 113, 209, 1);

  void changeColor(Color color) {
    _color = color;
    notifyListeners();
  }
}
