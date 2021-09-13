import 'package:FlutterM/core/viewmodel/AppGlobal.dart';
import 'package:flutter/material.dart';

class ThemeViewModel extends ChangeNotifier {
  int _counter = 102;
  int get counter => _counter;
  set counter(int value) {
    _counter = value;
    notifyListeners();
  }
}
