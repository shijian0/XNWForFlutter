import 'package:flutter/material.dart';

class BottomBarItem extends BottomNavigationBarItem {
  BottomBarItem(String normal, String selected, String title)
      : super(
          icon: Image.asset(
            "asset/images/$normal.png",
            width: 32,
            gaplessPlayback: true,
          ),
          activeIcon: Image.asset("asset/images/$selected.png",
              width: 32, gaplessPlayback: true),
          label: title,
        );
}
