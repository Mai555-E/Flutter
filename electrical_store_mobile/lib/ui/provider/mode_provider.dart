import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ModeProvider with ChangeNotifier {
  bool _lightModeEnable = true;
  bool get lightModeEnable => _lightModeEnable;
  set lighModeEnable(value) {
    _lightModeEnable = value;
  }

  changeMode() {
    if (_lightModeEnable == true) {
      _lightModeEnable = false;
      notifyListeners();
    } else {
      _lightModeEnable = true;
      notifyListeners();
    }
  }
}
