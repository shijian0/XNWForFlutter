import 'package:FlutterM/core/http/home_data_request.dart';
import 'package:FlutterM/core/http/login_reques.dart';
import 'package:FlutterM/core/http/message_request.dart';
import 'package:FlutterM/core/model/login_model.dart';
import 'package:flutter/material.dart';
import '../model/user_info.dart';
import 'AppGlobal.dart';

const _themes = <MaterialColor>[
  Colors.green,
  Colors.blue,
  Colors.cyan,
  Colors.teal,
  Colors.red,
];

class UserDataViewModel extends ChangeNotifier {
  UserInfo _user;
  LoginModel _loginModel;
  List messageList;
  List qunList;
  int _currentThemeIndex = 0;

  UserDataViewModel() {
    print("UserDataViewModel 构造函数");
    _loginModel = AppGlobal.loginModel;
    print("*******_loginModel*******:$_loginModel");

    messageList = AppGlobal.messageList;
    print("*******messageList*******:$messageList");
    qunList = AppGlobal.myQunList;
    print("*******qunList*******:$qunList");

    if (_loginModel != null) {
      print("login request");
      LoginRequest.loginRequest(_loginModel.loginName, _loginModel.password)
          .then((value) {
        print("login success");
        LoginModel model = LoginModel.fromJson(value);
        model.loginName = _loginModel.loginName;
        model.password = _loginModel.password;
        _loginModel = model;
        _currentThemeIndex = AppGlobal.themeIndex;
        saveLoginData(model);

        notifyListeners();
      }).then((value) {
        initData();
      });
    } else {
      notifyListeners();
    }
  }

  void initData() {
    print("message requst");
    MessageRequest.requestMessageList().then((value) {
      messageList = value;
      print("message requst finishe");
      saveMessageList(messageList);
    });

    print("myqun requst");
    HomeDataRequest.requestHomeData().then((value) {
      qunList = value;
      print("myqun requst finishe");

      saveMyQunList(qunList);
    });
  }

  UserInfo get user => _user;
  set user(UserInfo user) {
    _user = user;
    notifyListeners();
  }

  LoginModel get loginModel => _loginModel;
  set loginModel(LoginModel loginModel) {
    _loginModel = loginModel;
    AppGlobal.loginModel = loginModel;
    saveLoginData(loginModel);
  }

  List<MaterialColor> get themes => _themes;

  int get currentThemeIndex => _currentThemeIndex;
  set currentThemeIndex(int index) {
    _currentThemeIndex = index;

    AppGlobal.saveThemeIndex(index);
    notifyListeners();
  }

  ColorSwatch get currentThemeColor {
    return _themes[_currentThemeIndex];
  }

  void saveLoginData(LoginModel model) {
    AppGlobal.saveLoginData(model);
    notifyListeners();
  }

  void saveMessageList(List messageList) {
    AppGlobal.saveMessageList(messageList);
    notifyListeners();
  }

  void saveMyQunList(List qunList) {
    AppGlobal.saveMyQunList(qunList);
    notifyListeners();
  }

  void clearAllData() {
    qunList = null;
    messageList = null;
    _loginModel = null;

    AppGlobal.cleaAll();
    notifyListeners();
  }
}
