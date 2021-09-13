import 'package:flutter/material.dart';

class Unknown extends StatefulWidget {
  static const String routeName = "/unknown";
  @override
  _UnknownState createState() => _UnknownState();
}

class _UnknownState extends State<Unknown> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("unknown"),
        ),
        body: Center(
          child: Column(
            children: [Text("unknown error page")],
          ),
        ));
  }
}
