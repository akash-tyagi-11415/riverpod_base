import 'package:flutter/material.dart';

class HomePageProvider extends ChangeNotifier {
  int value = 0;

  incrementValue() {
    value++;
    notifyListeners();
  }

  decrementValue() {
    value--;
    notifyListeners();
  }
}
