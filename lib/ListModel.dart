import 'package:flutter/widgets.dart';

class ListModel with ChangeNotifier {
  List<String> _todoList = ['deneme'];

  List<String> get todoList => _todoList;

  void addItem(String item) {
    _todoList.add(item);
    notifyListeners();
  }
}
