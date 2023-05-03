import 'package:flutter/cupertino.dart';

class android extends ChangeNotifier{
  bool a=true;
  void Change(bool index)
  {
     a=index;
     notifyListeners();
  }
  bool b=false;
  void Change2(bool index)
  {
    b=index;
    notifyListeners();
  }
  bool c=true;
  void Change3(bool index)
  {
    c=index;
    notifyListeners();
  }

}