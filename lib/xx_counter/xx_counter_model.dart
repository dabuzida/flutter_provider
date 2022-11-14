import 'package:flutter/material.dart';

class XXCounterModel extends ChangeNotifier {
  int _number = 0;
  int _number2 = 0;
  int number3 = 0;
  int get number => _number;
  int get number2 => _number2;
  int get number33 => number3;

  void increase() {
    _number++;
    notifyListeners();
  }

  void decrease() {
    _number--;
    notifyListeners();
  }

  void increase2() {
    _number2++;
    notifyListeners();
  }

  void decrease2() {
    _number2--;
    notifyListeners();
  }

  void increaseAll() {
    _number++;
    _number2++;
    notifyListeners();
  }

  void decreaseAll() {
    _number--;
    _number2--;
    notifyListeners();
  }
}
