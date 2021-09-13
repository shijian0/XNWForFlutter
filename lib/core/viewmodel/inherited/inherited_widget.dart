import 'package:flutter/material.dart';

class UserData extends InheritedWidget {
  final int counter = 120;

  UserData({Widget child}) : super(child: child);

  static UserData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType();
  }

  @override
  bool updateShouldNotify(covariant UserData oldWidget) {
    return oldWidget.counter != counter;
  }
}
