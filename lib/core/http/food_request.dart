import 'base/http_request.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

class CategoryRequest {
  static Future<List> requestCategoryList() async {
    final url = "/api/category";
    final result = await HttpRequest.request(url, method: "get");
    final objects = result["category"];

    List messages = [];

    for (var item in objects) {
      messages.add(item);
    }
    print("category:$messages");

    return messages;
  }
}

class MealRequest {
  static Future<List> requestMeal() async {
    final url = "/api/meal";
    final result = await HttpRequest.request(url, params: {});
    final objects = result["meal"];
    List messages = [];

    for (var item in objects) {
      messages.add(item);
    }
    print("meal:$messages");
    return messages;
  }
}

class HYJsonParse {
  static Future<List> getCategoryData() async {
    // 1.加载json文件
    final jsonString = await rootBundle.loadString("asset/json/category.json");

    // 2.将jsonString转成Map/List
    final result = json.decode(jsonString);

    // 3.将Map中的内容转成一个个对象
    final resultList = result["category"];
    List<Map> categories = [];
    for (var json in resultList) {
      categories.add(json);
    }
    print("categories:$categories");
    return categories;
  }
}
