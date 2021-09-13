import 'package:flutter/material.dart';

class ColumRowStack extends StatefulWidget {
  @override
  _ColumRowStackState createState() => _ColumRowStackState();
}

class _ColumRowStackState extends State<ColumRowStack> {
  var isFav = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
            "https://imagepphcloud.thepaper.cn/pph/image/148/0/543.jpg"),
        Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              color: Color(0x250000000),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "我是小码哥",
                    style: TextStyle(color: Colors.white),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: this.isFav ? Colors.red : Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        this.isFav = !this.isFav;
                      });
                    },
                  )
                ],
              ),
            ))
      ],
    );
  }
}
