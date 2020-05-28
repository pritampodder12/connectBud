import 'package:flutter/material.dart';


class Notifier extends ChangeNotifier {
  bool _bottomNav;

  Notifier(this._bottomNav);

  getBottomNavVisibility() => _bottomNav;

  void toggleOn() {
    _bottomNav = true;
    notifyListeners();
  }

  void toggleOff() {
    _bottomNav = false;
    notifyListeners();
  }
}