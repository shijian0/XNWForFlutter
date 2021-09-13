import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/viewmodel/user_data_view_model.dart';

class SettingPage extends StatefulWidget {
  static String routeName = "/setting";
  const SettingPage({Key key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        title: Text("设置"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(10),
            child: Consumer<UserDataViewModel>(
              builder: (context, userdata, child) {
                return FlatButton(
                  onPressed: () {
                    userdata.clearAllData();
                    print("login out");
                    Navigator.of(context).pop();
                  },
                  height: 44,
                  child: Text(
                    "退 出",
                    style: TextStyle(color: Color(0xff313131)),
                  ),
                  color: Colors.red,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
