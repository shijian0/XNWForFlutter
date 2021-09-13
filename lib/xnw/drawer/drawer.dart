import 'package:flutter/material.dart';

class LYDrawer extends StatefulWidget {
  @override
  _LYDrawerState createState() => _LYDrawerState();
}

class _LYDrawerState extends State<LYDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Drawer(
        child: Column(
          children: [
            buildHeader(),
            buildListTile(Icon(Icons.money), "钱包", () {
              Navigator.of(context).pop();
            }),
            buildListTile(Icon(Icons.money), "登录", () {
              Navigator.of(context).pop();
            }),
            buildListTile(Icon(Icons.money), "主题", () {
              Navigator.of(context).pop();
            }),
            buildListTile(Icon(Icons.settings), "设置", () {
              Navigator.of(context).pop();
            }),
          ],
        ),
      ),
    );
  }

  Widget buildHeader() {
    return Container(
      color: Colors.orange,
      height: 120,
      alignment: Alignment(0, 0.5),
      width: double.infinity,
      child: Text(
        "开始动手",
        style: Theme.of(context).textTheme.headline3,
      ),
    );
  }

  Widget buildListTile(Widget icon, String title, Function func) {
    return ListTile(
      leading: icon,
      title: Text(title),
      onTap: func,
    );
  }
}
