import 'package:FlutterM/core/http/base/xnw_request.dart';

/*{
    "cost_time" = "0.7251479625701904";
    errcode = 0;
    "main_list" =     (
    );
    reminder =     {
        "new_atme_count" = 0;
        "new_c_atme_count" = 0;
        "new_comer_count" = 0;
        "new_device_att_count" = 0;
        "new_exam_report_count" = 0;
        "new_fans_count" = 0;
        "new_hyq_log_count" = 0;
        "new_message_count" = 0;
        "new_notify_count" = 0;
        "new_system_notify_count" = 0;
        "new_w_atme_count" = 0;
        "new_work_count" = 0;
    };
    total = 0;
    ts = 1630628746;
} */
class MessageRequest {
  static Future<List> requestMessageList() async {
    final url = "/api/get_main_list";
    Map params = Map<String, dynamic>();
    params["limit"] = 1000;
    params["page"] = 1;
    final result = await XNWRequest.request(url, params: params);
    // print("result message_list:$result");
    return result["main_list"];
  }
}
