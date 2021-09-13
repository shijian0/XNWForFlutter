import 'package:FlutterM/core/viewmodel/theme_view_model.dart';
import 'package:FlutterM/core/viewmodel/user_data_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemePage extends StatefulWidget {
  static String routeName = "/theme";
  @override
  _ThemePageState createState() => _ThemePageState();
}

class _ThemePageState extends State<ThemePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("主题"),
      ),
      body: Consumer<UserDataViewModel>(
        builder: (context, userData, child) {
          return ListView.builder(
            itemCount: userData.themes.length,
            itemBuilder: (context, index) {
              print(userData.themes[index]);
              return Padding(
                padding: EdgeInsets.all(10),
                child: GestureDetector(
                  onTap: () {
                    userData.currentThemeIndex = index;
                    // setState(() {});
                  },
                  child: Container(
                    height: 40,
                    color: userData.themes[index],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
