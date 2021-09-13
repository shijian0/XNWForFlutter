import 'dart:math';
import 'food_detail.dart';
import 'package:flutter/material.dart';

class FoodContent extends StatefulWidget {
  final Map food;
  FoodContent(this.food);
  @override
  _FoodContentState createState() => _FoodContentState();
}

class _FoodContentState extends State<FoodContent> {
  @override
  Widget build(BuildContext context) {
    Color bgColor = Color.fromARGB(255, Random().nextInt(256),
        Random().nextInt(256), Random().nextInt(256));
    return GestureDetector(
      onTap: () {
        print(widget.food);
        Navigator.of(context)
            .pushNamed(FoodDetail.routeName, arguments: widget.food);
      },
      child: Container(
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(8),
          gradient: LinearGradient(colors: [bgColor.withOpacity(0.5), bgColor]),
        ),
        alignment: Alignment.center,
        child: Text(
          widget.food["title"],
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
