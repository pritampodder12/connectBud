import 'package:flutter/material.dart';
import '../Constants/constants.dart';
import '../Routes/index.dart';

class HomeNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: RouterName.HOME_PAGE, onGenerateRoute: homeRoute);
  }
}
