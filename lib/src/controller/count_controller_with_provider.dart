import 'package:flutter/cupertino.dart';

class CountControllerWithProvider with ChangeNotifier {
  int count = 0;

  void increase () {
    count ++;
    notifyListeners();
  }
}