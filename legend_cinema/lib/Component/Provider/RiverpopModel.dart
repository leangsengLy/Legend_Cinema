import 'package:flutter/material.dart';

class RiverpopModel extends ChangeNotifier {
  RiverpopModel({required this.counter});
  int counter;
  void addCounter(int add) {
    counter += add;
    notifyListeners();
  }

  void subCounter(int sub) {
    counter = counter - sub;
    notifyListeners();
  }
}
