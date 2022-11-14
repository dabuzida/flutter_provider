import 'package:flutter/material.dart';

class GGCounterModel extends ChangeNotifier {
  int _number = 0;
  int _number2 = 0;
  int get number => _number;
  int get number2 => _number2;

  void increase() {
    print('clicked!');
    _number++;
    notifyListeners();
  }

  void decrease() {
    print('clicked!');
    _number--;
    notifyListeners();
  }

  void increase2() {
    print('clicked!');
    _number2++;
    notifyListeners();
  }

  void decrease2() {
    print('clicked!');
    _number2--;
    notifyListeners();
  }

  void increaseAll() {
    print('clicked!');
    _number++;
    _number2++;
    notifyListeners();
  }

  void decreaseAll() {
    print('clicked!');
    _number--;
    _number2--;
    notifyListeners();
  }
}
