import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {
  //to unify the instances and use just one in two or more widgets,
  //we make this design patter, where, we instance the class with
  //static instance
  static AppController instance = AppController();
  bool isDarkTheme = false;
  changeTheme() {
    //modifiy the variable;
    isDarkTheme = !isDarkTheme;
    //this alert to all widget about this modification;
    notifyListeners();
  }
}
