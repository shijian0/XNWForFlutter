import 'package:flutter/material.dart';

class MealFavViewModel extends ChangeNotifier {
  List _favs = [];

  List get favs {
    return _favs;
  }

  void dealFav(Map meal) {
    if (_favs.contains(meal)) {
      _removeMeal(meal);
    } else {
      _addMeal(meal);
    }
    notifyListeners();
  }

  bool isMealFav(meal) {
    if (_favs.contains(meal)) {
      return true;
    } else {
      return false;
    }
  }

  void _addMeal(Map meal) {
    _favs.add(meal);
  }

  void _removeMeal(Map meal) {
    _favs.remove(meal);
  }
}
