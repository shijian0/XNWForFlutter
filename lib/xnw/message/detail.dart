import 'package:FlutterM/xnw/message/food/fav.dart';
import 'package:flutter/material.dart';
import 'food/food.dart';

class Detail extends StatefulWidget {
  static const String routeName = "/detail";
  String message = "";
  Detail(this.message);
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop("detail back message left");
          },
        ),
        title: Text("详情"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.message),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pop("detail back message button");
                // Navigator.of(context).pushNamed("message_detail");
              },
              child: Text("back"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Food.routeName);
                // Navigator.of(context).pushNamed("message_detail");
              },
              child: Text("goto food"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(FavPage.routeName);
                // Navigator.of(context).pushNamed("message_detail");
              },
              child: Text("goto fav"),
            )
          ],
        ),
      ),
    );
  }
}
