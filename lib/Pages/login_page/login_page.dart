import 'package:connect_bud/Constants/constants.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(30),
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                //border: Border.all(color: Colors.red),
                image: DecorationImage(
              image: AssetImage(R.images.loginBgImage),
              fit: BoxFit.cover,
            )),
            child: ListView(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 25,
                ),
                Image(image: AssetImage(R.images.logo)),
                SizedBox(
                  height: 80,
                ),
                TextField(
                  autofocus: false,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: R.color.white, width: 1.0),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: R.color.white, width: 1.0),
                    ),
                    hintText: 'Email',
                    hintStyle: TextStyle(color: R.color.white),
                    prefixIcon: Image(
                      image: AssetImage(R.images.userIcon),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                TextField(
                  autofocus: false,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: R.color.white, width: 1.0),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: R.color.white, width: 1.0),
                    ),
                    hintText: 'Password',
                    hintStyle: TextStyle(color: R.color.white),
                    prefixIcon: Image(
                      image: AssetImage(R.images.passwordIcon),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        showPassword ? Icons.visibility : Icons.visibility_off,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          showPassword = !showPassword;
                        });
                      },
                    ),
                  ),
                  obscureText: showPassword,
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Forget Password?',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: R.color.authButtonColor),
                ),
                SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 70,
                  width: 200,
                  child: FlatButton(
                    color: R.color.authButtonColor,
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                          color: R.color.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35.0),
                      side: BorderSide(color: R.color.authButtonColor),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, RouterName.OTP_PAGE);
                      // Navigator.of(context, rootNavigator: true)
                      //     .pushReplacementNamed(RouterName.Home_Root_Stack);
                    },
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 60,
                      child: Image.asset(R.images.facebookIcon),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      height: 60,
                      child: Image.asset(R.images.gmailIcon),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(color: R.color.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, RouterName.SIGNUP_PAGE);
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: R.color.authButtonColor),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
