import 'dart:convert';
import 'package:FlutterM/core/model/login_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppGlobal {
  static SharedPreferences shared;
  static LoginModel loginModel;
  static List messageList;
  static List myQunList;
  static Map myInfo;
  static int themeIndex = 0;

  static Future init() async {
    shared = await SharedPreferences.getInstance();
    print("AppGlobal init");
    var loginDataJsonString = shared.getString("loginData");
    if (loginDataJsonString != null) {
      loginModel = LoginModel.fromJson(jsonDecode(loginDataJsonString));

      themeIndex = shared.getInt("theme_index") ?? 0;
      var messageListJsonString = shared.getString("message_list");
      if (messageListJsonString != null) {
        messageList = jsonDecode(messageListJsonString);
      }

      var myQunListJsonString = shared.getString("my_qun_list");
      if (myQunListJsonString != null) {
        messageList = jsonDecode(myQunListJsonString);
      }
    }
  }

  static saveLoginData(LoginModel model) {
    String jsonstring = jsonEncode(model.toJson());
    AppGlobal.shared.setString("loginData", jsonstring);
  }

  static saveMessageList(List messages) {
    String jsonstring = jsonEncode(messages).toString();
    AppGlobal.shared.setString("message_list", jsonstring);
  }

  static saveMyQunList(List quns) {
    String jsonstring = jsonEncode(quns).toString();
    AppGlobal.shared.setString("my_qun_list", jsonstring);
  }

  static saveThemeIndex(int index) {
    print("save theme index:$themeIndex");
    themeIndex = index;
    AppGlobal.shared.setInt("theme_index", themeIndex);
  }

  static cleaAll() {
    AppGlobal.shared.remove("loginData");
    AppGlobal.shared.remove("message_list");
    AppGlobal.shared.remove("my_qun_list");
    AppGlobal.shared.remove("theme_index");

    messageList = null;
    myQunList = null;
    myInfo = null;
    themeIndex = 0;
  }
}
