import 'package:flutter/material.dart';
import 'dart:math';

class MyCustomScrollView extends StatefulWidget {
  @override
  _MyCustomScrollViewState createState() => _MyCustomScrollViewState();
}

class _MyCustomScrollViewState extends State<MyCustomScrollView> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 200,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
              title: Text("liyong"),
              background: Image.network(
                "https://cdn.xnwimg.com/down/%7BDCCD68C3-9572-B1E3-5524-31054EFBD0DA%7D/1.jpg",
                fit: BoxFit.cover,
              )),
        ),
        SliverGrid(
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            return Container(
              color: Colors.red,
            );
          }, childCount: 4),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 1.5),
        ),
        SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
          return ListTile(
            title: Text("$index"),
          );
        }, childCount: 20))
      ],
    );
  }
}
