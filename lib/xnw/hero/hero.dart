import 'package:FlutterM/xnw/hero/hero_detail.dart';
import 'package:flutter/material.dart';

class HeroPage extends StatefulWidget {
  @override
  _HeroPageState createState() => _HeroPageState();
}

class _HeroPageState extends State<HeroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("英雄"),
      // ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 8,
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            childAspectRatio: 16 / 9),
        itemBuilder: (context, index) {
          String imageURL = "https://picsum.photos/500/500?random=$index";
          return GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .pushNamed(HeroDetail.routeName, arguments: imageURL);
            },
            child: Hero(
                tag: imageURL,
                child: Image.network(imageURL, fit: BoxFit.cover)),
          );
        },
      ),
    );
  }
}
