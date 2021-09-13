import 'dart:io';
import 'package:FlutterM/core/http/myinfo_request.dart';
import 'package:FlutterM/xnw/mine/setting.dart';
import 'package:FlutterM/xnw/mine/theme.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:FlutterM/xnw/mine/about.dart';
import 'package:flutter/material.dart';

enum CellType {
  CellTypePerson,
  CellTypeSetting,
  CellTypeTheme,
  CellTypeAbout,
  CellTypeBattery,
}

class MinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        title: Text("我的"),
      ),
      body: MineContent(),
    );
  }
}

class MineContent extends StatefulWidget {
  @override
  _MineContentState createState() => _MineContentState();
}

class _MineContentState extends State<MineContent> {
  List dataSource = [
    {"type": CellType.CellTypePerson, "title": "个人信息"},
    {"type": CellType.CellTypeSetting, "title": "设置"},
    {"type": CellType.CellTypeTheme, "title": "主题"},
    {"type": CellType.CellTypeAbout, "title": "关于"},
    {"type": CellType.CellTypeBattery, "title": "电量测试"}
  ];
  File _icon;
  String _batteryString = "";
  static const platform = const MethodChannel("elxue.com/battery");

  @override
  void initState() {
    super.initState();
    print("kkkkkkkkkkkkkkkkkkk*******MinePage----initState()*********");
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dataSource.length,
      itemBuilder: (context, index) {
        Map info = dataSource[index];
        if (info["type"] == CellType.CellTypePerson) {
          return ListTile(
            leading: _icon == null ? Icon(Icons.person) : Image.file(_icon),
            title: Text(info["title"]),
            onTap: _pickImage,
          );
        }
        if (info["type"] == CellType.CellTypeBattery) {
          return ListTile(
            leading: Icon(Icons.battery_alert),
            title: Text("${info["title"]}$_batteryString"),
            onTap: _batteryTest,
          );
        }
        if (info["type"] == CellType.CellTypeTheme) {
          return ListTile(
            leading: Icon(Icons.battery_alert),
            title: Text("${info["title"]}$_batteryString"),
            onTap: _themeAction,
          );
        }
        if (info["type"] == CellType.CellTypeSetting) {
          return ListTile(
            leading: Icon(Icons.battery_alert),
            title: Text(info["title"]),
            onTap: _settingAction,
          );
        }
        return ListTile(
          leading: Icon(Icons.settings),
          title: Text(info["title"]),
          onTap: () {
            Navigator.of(context)
                .pushNamed(About.routeName, arguments: "mine data");
          },
        );
      },
    );
  }

  void _themeAction() {
    Navigator.of(context).pushNamed(ThemePage.routeName);
  }

  void _batteryTest() async {
    try {
      _batteryString = await platform.invokeMethod("getBatteryInfo", "1234");
    } catch (e) {
      _batteryString = await platform.invokeMethod("getBatteryInfo", "1234");
    }

    setState(() {});
  }

  void _settingAction() {
    Navigator.of(context).pushNamed(SettingPage.routeName);
  }

  void _pickImage() async {
    File file = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _icon = file;
    });
  }
}
