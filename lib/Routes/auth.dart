import 'package:flutter/material.dart';
import '../Constants/constants.dart';
import '../Pages/index.dart';

Route<dynamic> authRoute(RouteSettings settings) {
  switch (settings.name) {
    case RouterName.LOGIN_PAGE:
      return MaterialPageRoute(builder: (context) => LoginPage());
      break;
    case RouterName.SIGNUP_PAGE:
      return MaterialPageRoute(builder: (context) => SignUpPage());
      break;
    case RouterName.OTP_PAGE:
      return MaterialPageRoute(builder: (context) => OtpPage());
      break;

    default:
      return MaterialPageRoute(builder: (context) => LoginPage());
      break;
  }
}
