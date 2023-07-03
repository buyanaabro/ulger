import 'package:flutter/material.dart';
import 'package:ulgermn/model/ulger/index.dart';

class CommonProvider extends ChangeNotifier {
  List<UlgerModel> ulgers = [];
  List<int> favoriteUlgerIds = [];
  int currentIdx = 0;
  bool isLoggedIn = false;

  void changeCurrentIdx(int idx) {
    currentIdx = idx;
    notifyListeners();
  }
}
