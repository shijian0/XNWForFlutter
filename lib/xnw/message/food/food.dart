import 'package:flutter/material.dart';
import 'food_content.dart';
import '../../../core/http/food_request.dart';

class Food extends StatefulWidget {
  static const String routeName = "/food";

  @override
  _FoodState createState() => _FoodState();
}

class _FoodState extends State<Food> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("美食广场"),
      ),
      body: FutureBuilder<List>(
        future: CategoryRequest.requestCategoryList(),
        // future: HYJsonParse.getCategoryData(),
        builder: (ctx, snapshot) {
          if (!snapshot.hasData)
            return Center(child: CircularProgressIndicator());
          if (snapshot.error != null) return Center(child: Text("请求失败"));

          final List categories = snapshot.data;
          return GridView.builder(
              padding: EdgeInsets.all(20),
              itemCount: categories.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 1.5),
              itemBuilder: (ctx, index) {
                Map food = categories[index];
                return FoodContent(food);
              });
        },
      ),
    );
  }
}

/*FutureBuilder<List<Map>>(
        future: CategoryRequest.requestCategoryList(),
        builder: (context, snapshot) {
          print("liyong---category:${snapshot.data}");
          if (!snapshot.hasData)
            return Center(child: CircularProgressIndicator());

          if (snapshot.hasError) return Center(child: Text("请求错误"));

          List foodList = snapshot.data;
          return GridView.builder(
            padding: EdgeInsets.all(20),
            itemCount: foodList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 16 / 9,
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              Map food = foodList[index];
              return FoodContent("${food["title"]}");
            },
          );
        },
      ) */
