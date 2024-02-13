import 'package:flutter/material.dart';

class RiverpodModel extends ChangeNotifier {
  bool isLight;
 
  RiverpodModel({required this.isLight});
 
  void changeTheme({required bool newValue}) {
    isLight = newValue;
    notifyListeners();
  }
}