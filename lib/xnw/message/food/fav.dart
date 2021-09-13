import 'package:FlutterM/core/viewmodel/meal_fav_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavPage extends StatefulWidget {
  static const String routeName = "/favPage";
  @override
  _FavPageState createState() => _FavPageState();
}

class _FavPageState extends State<FavPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("收藏"),
      ),
      body: Consumer<MealFavViewModel>(
        builder: (context, favVM, child) {
          print("fav count:${favVM.favs.length}");
          if (favVM.favs.length == 0) {
            return Center(
              child: Text("还么有收藏"),
            );
          }
          return ListView.builder(
            itemBuilder: (context, index) {
              Map meal = favVM.favs[index];
              return getMealItem(meal);
            },
            itemCount: favVM.favs.length,
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
