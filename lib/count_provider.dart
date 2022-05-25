import 'package:flutter/material.dart';

class CountProvider extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increase() {
    ++_count;
    notifyListeners();
  }

  void decrease() {
    --_count;
    notifyListeners();
  }
}

/* 
ChangeNotifier
값이 변경되면 리스너에게 notify 할 수 있는 클래스

ChangeNotifierProvider
하위 위젯에 "ChangeNotifier"를 제공해주는 클래스

Consumer
Provider의 값을 받아서 실제로 사용하는 부분.
딱 빌드가 되어야 할 부분에만 감싸야 비효율적인 리빌딩을 막을 수 있음.

Provider.of<>
 */