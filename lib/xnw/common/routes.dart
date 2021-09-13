import 'package:FlutterM/xnw/hero/hero_detail.dart';
import 'package:FlutterM/xnw/message/food/fav.dart';
import 'package:FlutterM/xnw/message/food/food_detail.dart';
import 'package:FlutterM/xnw/mine/setting.dart';
import 'package:FlutterM/xnw/mine/theme.dart';
import 'package:flutter/material.dart';
import '../mine/about.dart';
import '../message/detail.dart';
import '../unknown.dart';
import '../message/food/food.dart';
import '../login/login.dart';
import '../search/search.dart';

class APPRoutes {
  static final Map<String, WidgetBuilder> routes = {
    About.routeName: (context) => About(),
    Food.routeName: (context) => Food(),
    FavPage.routeName: (context) => FavPage(),
    LoginPage.routeName: (context) => LoginPage(),
    ThemePage.routeName: (context) => ThemePage(),
    SettingPage.routeName: (context) => SettingPage(),
  };
  static final RouteFactory generateRoute = (settings) {
    if (settings.name == Detail.routeName) {
      return MaterialPageRoute(
        builder: (context) {
          return Detail(settings.arguments);
        },
        fullscreenDialog: true,
      );
    } else if (settings.name == HeroDetail.routeName) {
      return PageRouteBuilder(
        pageBuilder: (context, ani1, ani2) {
          return FadeTransition(
            opacity: ani1,
            child: HeroDetail(settings.arguments),
          );
        },
      );
    } else if (settings.name == FoodDetail.routeName) {
      return MaterialPageRoute(
        builder: (context) {
          return FoodDetail(settings.arguments);
        },
      );
    } else if (settings.name == Search.routeName) {
      return MaterialPageRoute(
        builder: (context) {
          return Search(
            datas: settings.arguments,
          );
        },
      );
    } else {
      return null;
    }
  };
  static final RouteFactory unknownRoute = (settings) {
    return MaterialPageRoute(
      builder: (context) {
        return Unknown();
      },
    );
  };
}
