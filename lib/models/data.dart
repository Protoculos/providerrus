import 'package:flutter/cupertino.dart';

class Data with ChangeNotifier {
  String _data = 'TopLevel1 Data 1111';

  String get getData => _data;

  void changeString(String newString) {
    _data = newString;
    notifyListeners();
  }
}
