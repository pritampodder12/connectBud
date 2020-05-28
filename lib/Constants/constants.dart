import 'dart:ui';

class R {
  static final color = _Color();
  static final images = _Images();
  static final sizeUnits = _SizeUnits();
}

class _SizeUnits {
  final appBarSize = 61.5;
}

class _Images {
  final logo = 'assets/images/logo.png';
  final authBgImage = 'assets/images/become-bg.jpg';
  final loginBgImage = 'assets/images/login-bg.jpg';
  final userIcon = 'assets/images/user-icon.png';
  final passwordIcon = 'assets/images/password-icon.png';
  final facebookIcon = 'assets/images/f-icon.png';
  final gmailIcon = 'assets/images/gmail-icon.png';
}

class _Color {
  final gray = Color.fromRGBO(179, 179, 179, 1.0);
  final white = Color.fromRGBO(255, 255, 255, 1);
  final authButtonColor = Color.fromRGBO(238, 73, 103, 1);

  final cBDarkBlue =
      Color.fromRGBO(0, 57, 72, 1.0); // CB Dark Blue only example
}

class RouterName {
  static const Home_Root_Stack = 'home_stack';
  static const Auth_Root_Stack = 'auth_stack';
  static const LOGIN_PAGE = 'login_page';
  static const SIGNUP_PAGE = 'signup_page';
  static const OTP_PAGE = 'otp_page';
  static const HOME_PAGE = 'home_page';
  static const Test_Page = 'test_page';
}
