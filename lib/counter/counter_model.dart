import 'package:flutter/material.dart';

class CounterModel extends ChangeNotifier {
  int _number = 0;
  int _number2 = 0;
  int get number => _number;
  int get number2 => _number2;

  increase() {
    _number++;
    notifyListeners();
  }

  decrease() {
    _number--;
    notifyListeners();
  }

  increase2() {
    _number2++;
    notifyListeners();
  }

  decrease2() {
    _number2--;
    notifyListeners();
  }

  increaseAll() {
    _number++;
    _number2++;
    notifyListeners();
  }

  decreaseAll() {
    _number--;
    _number2--;
    notifyListeners();
  }
}
