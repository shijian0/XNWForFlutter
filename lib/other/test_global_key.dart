import 'package:flutter/material.dart';

class TestGlobalKey extends StatefulWidget {
  final String name = "liyong";

  const TestGlobalKey({Key key}) : super(key: key);

  @override
  _TestGlobalKeyState createState() => _TestGlobalKeyState();
}

class _TestGlobalKeyState extends State<TestGlobalKey> {
  final String message = "nihao";

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
