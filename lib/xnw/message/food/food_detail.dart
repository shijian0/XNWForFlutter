import 'package:FlutterM/core/viewmodel/meal_fav_view_model.dart';
import 'package:FlutterM/core/viewmodel/meal_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FoodDetail extends StatefulWidget {
  static const String routeName = "/foodDetail";
  final Map food;
  FoodDetail(this.food);
  @override
  _FoodDetailState createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.food["title"]),
      ),
      body: Consumer<MealViewModel>(
        builder: (context, mealVM, child) {
          // return Text("hhhh");
          print("meals===============${mealVM.meals.length}");
          List tmp = mealVM.meals.where((element) {
            List cateList = element["categories"];
            if (cateList.contains(widget.food["id"])) {
              return true;
            } else {
              return false;
            }
          }).toList();
          print("tmp===============${tmp.length}");

          return ListView.builder(
            itemCount: tmp.length,
            itemBuilder: (context, index) {
              return getMealItem(tmp[index]);
            },
          );
        },
      ),
    );
  }

  Widget getMealItem(Map meal) {
    return Card(
      child: Stack(
        children: [
          Image.network(meal["imageUrl"]),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(color: Color.fromRGBO(0, 0, 0, 0.3)),
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("${meal["title"]}+id:${meal["id"]}",
                        style: TextStyle(color: Colors.white)),
                    Consumer<MealFavViewModel>(
                      builder: (context, favVM, child) {
                        return GestureDetector(
                          onTap: () {
                            print("fav");
                            favVM.dealFav(meal);
                          },
                          child: Icon(
                            Icons.favorite,
                            color: favVM.isMealFav(meal)
                                ? Colors.red
                                : Colors.black,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
