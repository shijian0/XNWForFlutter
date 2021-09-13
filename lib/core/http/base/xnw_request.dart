import 'package:FlutterM/core/viewmodel/AppGlobal.dart';

import 'http_request.dart';

class XNWRequest {
  static Future<Map> request(String url, {Map<String, dynamic> params}) async {
    if (params == null) {
      params = Map();
    }
    params["gid"] = AppGlobal.loginModel.uid;
    params["passport"] = AppGlobal.loginModel.passport;
    print("XNWRequest url:$url,params:$params");

    final result = await HttpRequest.request(url, params: params);

    return result;
  }
}
