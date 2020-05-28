import 'package:connect_bud/Constants/constants.dart';
import 'package:flutter/material.dart';

class OtpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.of(context, rootNavigator: true)
                .pushReplacementNamed(RouterName.Home_Root_Stack);
          },
          child: Text("Varify otp"),
        ),
      ),
    );
  }
}
