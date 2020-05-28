import 'package:flutter/material.dart';
import 'package:connect_bud/Utils/utils.dart';

import '../../Constants/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, RouterName.Test_Page);
          },
          child: Text('Press to navigate'),
        ),
        RaisedButton(
            onPressed: () {
              showDialog<void>(
                  useRootNavigator: false,
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                        title: Text('Test dialog box'),
                        actions: [
                          RaisedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                              Navigator.pushNamed(
                                  context, RouterName.Test_Page);
                            },
                            child: Text('Navigate'),
                          ),
                          RaisedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Close'),
                          ),
                        ],
                      ));
            },
            child: Text('Show Alert')),
      ])),
    );
  }
}
