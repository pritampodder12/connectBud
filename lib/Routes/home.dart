import 'package:flutter/material.dart';
import '../Constants/constants.dart';
import '../Pages/index.dart';

Route<dynamic> homeRoute(RouteSettings settings) {
  switch (settings.name) {
    case RouterName.HOME_PAGE:
      return MaterialPageRoute(builder: (context) => HomePage());
      break;
    case RouterName.Test_Page:
      return MaterialPageRoute(builder: (context) => TestPage());
      break;

    default:
      return MaterialPageRoute(builder: (context) => HomePage());
      break;
  }
}
