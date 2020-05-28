import 'package:flutter/material.dart';
import '../Constants/constants.dart';
import '../Routes/index.dart';

class AuthNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: RouterName.LOGIN_PAGE, onGenerateRoute: authRoute);
  }
}
