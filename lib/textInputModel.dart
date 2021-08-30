import 'package:flutter/widgets.dart';

class RealTimeInputModel with ChangeNotifier {
  String _i = "";
  String get i => _i;

  void realtimeText(String i) {
    print(i);
    notifyListeners();
  }
}
