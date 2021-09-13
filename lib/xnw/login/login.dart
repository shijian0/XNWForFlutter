import 'package:FlutterM/core/http/login_reques.dart';
import 'package:FlutterM/core/model/login_model.dart';
import 'package:FlutterM/core/viewmodel/inherited/inherited_widget.dart';
import 'package:FlutterM/core/viewmodel/user_data_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widges/loading.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = "/login";
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  var usernameInputEnable = false;

  var passwordInputEnable = false;
  @override
  void initState() {
    super.initState();
    usernameController.text = "15810665702";
    passwordController.text = "E10ADC3949BA59ABBE56E057F20F883E";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: 100),
            Image.asset("asset/logo@2x.png"),
            SizedBox(height: 20),
            TextField(
              controller: usernameController,
              onSubmitted: (value) {
                print("submit:$value");
              },
              onChanged: (value) {
                print("username:$value");
                if (value.length == 0) {
                  usernameInputEnable = false;
                } else {
                  usernameInputEnable = true;
                }
              },
              decoration: InputDecoration(
                labelText: "username",
                hintText: "请输入用户名",
                icon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: passwordController,
              onSubmitted: (value) {
                print("submit:$value");
              },
              onChanged: (value) {
                print("password:$value");
                if (value.length == 0) {
                  passwordInputEnable = false;
                } else {
                  usernameInputEnable = true;
                }
              },
              decoration: InputDecoration(
                labelText: "password",
                hintText: "请输入密码",
                icon: Icon(Icons.lock),
              ),
            ),
            SizedBox(height: 40),
            Container(
                width: double.infinity,
                child: Consumer<UserDataViewModel>(
                  builder: (context, userdata, child) {
                    return FlatButton(
                      onPressed: () {
                        LoginRequest.loginRequest(usernameController.text,
                                passwordController.text)
                            .then((value) {
                          if (value["errcode"] == 0) {
                            LoginModel model = LoginModel.fromJson(value);
                            model.loginName = usernameController.text;
                            model.password = passwordController.text;
                            userdata.loginModel = model;
                            userdata.initData();
                          }
                        });
                      },
                      height: 44,
                      child: Text(
                        "登 录",
                        style: TextStyle(color: Color(0xff313131)),
                      ),
                      color: Color(0xffffaa33),
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }
}
