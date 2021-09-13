import 'package:FlutterM/core/viewmodel/meal_fav_view_model.dart';
import 'package:FlutterM/core/viewmodel/meal_view_model.dart';
import 'package:FlutterM/xnw/hero/hero.dart';
import 'package:FlutterM/xnw/message/message.dart';
import 'package:FlutterM/xnw/mine/mine.dart';
import 'package:FlutterM/xnw/myqun/qun.dart';
import 'package:FlutterM/xnw/square/square.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import '../../core/viewmodel/theme_view_model.dart';
import '../../core/viewmodel/user_data_view_model.dart';
import '../widges/bottom_item.dart';

List<BottomBarItem> bottomItems = [
  BottomBarItem("tab-chat-normal@2x", "tab-chat-selected@2x", "消息"),
  BottomBarItem("tab-myqunzu-normal@2x", "tab-myqunzu-selected@2x", "我的群"),
  BottomBarItem("account_apple@2x", "account_apple@2x", "英雄"),
  BottomBarItem("tab-square-norma@2x", "tab-square-selected@2x", "广场"),
  BottomBarItem("tab-setting-normal@2x", "tab-setting-selected@2x", "我的"),
];

List<Widget> pages = [
  MessagePage(),
  MyQunPage(),
  HeroPage(),
  SquarePage(),
  MinePage(),
];

List<SingleChildWidget> providers = [
  ChangeNotifierProvider(create: (context) => MealFavViewModel()),
  ChangeNotifierProvider(create: (context) => MealViewModel()),
  ChangeNotifierProvider(create: (context) => ThemeViewModel()),
  ChangeNotifierProvider(create: (context) => UserDataViewModel()),
];

List<MaterialColor> themes = [
  Colors.blue,
  Colors.cyan,
  Colors.teal,
  Colors.green,
  Colors.red,
];
