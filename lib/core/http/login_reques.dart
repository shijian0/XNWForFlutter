import 'base/http_request.dart';

class LoginRequest {
  static Future<Map> loginRequest(String account, String password) async {
    final url = "/v1/weibo/do_login";
    final result = await HttpRequest.request(url,
        params: {"account": account, "password": password});

    print("login result:$result");
    return result;
  }
}
