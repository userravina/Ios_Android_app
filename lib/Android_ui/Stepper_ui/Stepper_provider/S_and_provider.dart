import 'package:flutter/cupertino.dart';

class provider extends ChangeNotifier {

  int selecteIndex = 0;

  void ChangContinue() {
    if (selecteIndex < 4) {
      selecteIndex++;
    }
    notifyListeners();
  }

  void Changcalean() {
    if (selecteIndex > 0) {
      selecteIndex--;
    }
    notifyListeners();
  }
}