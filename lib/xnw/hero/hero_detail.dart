import 'package:flutter/material.dart';

class HeroDetail extends StatefulWidget {
  static const String routeName = "/hero_detail";
  String _imageURL;
  HeroDetail(this._imageURL);

  @override
  _HeroDetailState createState() => _HeroDetailState();
}

class _HeroDetailState extends State<HeroDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Hero(
              tag: widget._imageURL,
              child: Image.network(
                widget._imageURL,
                fit: BoxFit.cover,
              ),
            )),
      ),
    );
  }
}
