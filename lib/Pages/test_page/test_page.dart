import 'package:flutter/material.dart';
import 'package:connect_bud/Utils/utils.dart';

import '../../Constants/constants.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double ht = MediaQuery.of(context).size.height;
    double wt = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Test Page'),
      ),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Container(
                height: ht * 0.5,
                width: double.infinity,
                child: Center(
                    child: Text(
                  "Hello ConnectBud",
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                  textAlign: TextAlign.center,
                )),
              ),
              Container(
                child: Text(
                  "This is a test page",
                  style: TextStyle(
                      fontWeight: FontWeight.w700, color: Colors.white),
                ),
                color: Colors.lime[400],
              )
            ],
          )),
    );
  }
}
