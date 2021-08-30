import 'package:flutter/foundation.dart';

class InfoModel with ChangeNotifier {
  int _i = 0;

  int get i => _i;

  void addPlus() {
    _i++;
    notifyListeners();
  }
}
