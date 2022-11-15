import 'package:flutter/material.dart';

class ReverseSelectModel extends ChangeNotifier {
  int _number = 0;
  int _number2 = 0;
  int _number3 = 0;
  int _number4 = 0;
  int get number => _number;
  int get number2 => _number2;
  int get number3 => _number3;
  int get number4 => _number4;
  int? x;

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

  void increase3() {
    print('clicked!');
    _number3++;
    notifyListeners();
  }

  void decrease3() {
    print('clicked!');
    _number3--;
    notifyListeners();
  }

  void increase4() {
    print('clicked!');
    _number4++;
    notifyListeners();
  }

  void decrease4() {
    print('clicked!');
    _number4--;
    notifyListeners();
  }

  void increaseAll() {
    print('clicked!');
    _number++;
    _number2++;
    _number3++;
    _number4++;
    notifyListeners();
  }

  void decreaseAll() {
    print('clicked!');
    _number--;
    _number2--;
    _number3--;
    _number4--;
    notifyListeners();
  }
}
