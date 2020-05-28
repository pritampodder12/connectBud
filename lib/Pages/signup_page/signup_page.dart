import 'package:connect_bud/Constants/constants.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Text('Sign up here'),
          RaisedButton(
              onPressed: () {
                Navigator.of(context, rootNavigator: true)
                    .pushReplacementNamed(RouterName.Home_Root_Stack);
              },
              child: Text("Complete signup")),
        ]),
      ),
    );
  }
}
