import 'base/xnw_request.dart';

class PortalDataRequest {
  static Future<List<Map>> requestMessageList() async {
    final url = "/v1/portal/get_user_data";
    final result = await XNWRequest.request(url, params: {});
    //待完成
    return result["main_list"];
  }
}
