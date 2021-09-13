import 'package:dio/dio.dart';
import 'http_config.dart';

class HttpRequest {
  static final BaseOptions baseOptions = BaseOptions(
      baseUrl: HttpConfig.baseURL, connectTimeout: HttpConfig.timeOut);
  static final Dio dio = Dio(baseOptions);

  static Future<T> request<T>(String url,
      {String method = "post",
      Map<String, dynamic> params,
      Interceptor inter}) async {
    //1、创建单独配置
    final options = Options(method: method);
//全局拦截器
    Interceptor dIter = InterceptorsWrapper(
      onRequest: (options) {
        print("onRequest 拦截 url:$url");
        return options;
      },
      onResponse: (e) {
        print("onResponse 拦截");
        return e;
      },
      onError: (e) {
        print("onError 拦截");
        return e;
      },
    );
    List<Interceptor> inters = [dIter];
    if (inter != null) {
      inters.add(inter);
    }
    // dio.interceptors.addAll(inters);
    //2、发送网络请求

    try {
      Response response =
          await dio.request(url, queryParameters: params, options: options);
      return response.data;
    } on DioError catch (e) {
      return Future.error(e);
    }
  }
}
