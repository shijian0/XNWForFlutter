import 'package:flutter/material.dart';
import '../http/food_request.dart';

class MealViewModel extends ChangeNotifier {
  List _meals = [];

  List get meals {
    return _meals;
  }

  MealViewModel() {
    MealRequest.requestMeal().then((value) {
      _meals = value;
      print("_meals:${_meals}");
      notifyListeners();
    });
  }
}
