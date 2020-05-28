import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart';

import './Constants/constants.dart';
import './Utils/nav_bar_notifier.dart';
import './Navigators/index.dart';

void main() {
  return runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => Notifier(true)),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  Future<bool> isLoggedIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool("loggedIn");
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MaterialApp(
      title: "Connect Bud",
      home: FutureBuilder(
        future: isLoggedIn(),
        builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
          return snapshot.hasData ? HomeNavigator() : AuthNavigator();
        },
      ),
      routes: {
        RouterName.Auth_Root_Stack: (context) => AuthNavigator(),
        RouterName.Home_Root_Stack: (context) => HomeNavigator(),
      },
    );
  }
}
