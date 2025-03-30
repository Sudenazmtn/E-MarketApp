import 'package:flutter/material.dart';

class LoginPageUtil {
  static const String titleForgot = "Forgot Password?";
  static const String rememberMe = "Remember me";
  static const String continueWithGoogle = "Continue with Google";
  static const String continueWithApple = "Continue with Apple";
  static const String titleWelcome = "Welcome";
  static const String titleSignIn =
      "Please enter your email & password to sign in";
  static const String mailText = "Email address";
  static const String passwordText = "Password";
  static const String signInButton = "Sign in";
}

class LoginPageStyle {
  static const TextStyle titleWelcome =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const TextStyle titleSignIn =
      TextStyle(fontSize: 20, color: ColorItems.black);

  static const TextStyle mailText =
      TextStyle(fontSize: 17, color: ColorItems.grey);

  static const TextStyle password =
      TextStyle(fontSize: 17, color: ColorItems.grey);

  static const TextStyle titleForgot = TextStyle(color: Colors.deepPurple);

  static const TextStyle continueWithGoogle =
      TextStyle(fontSize: 28, color: ColorItems.black);

  static final ButtonStyle continueWithGoogleButton = ElevatedButton.styleFrom(
    backgroundColor: ColorItems.white,
    foregroundColor: ColorItems.black,
    minimumSize: Size(double.infinity, 50),
    side: BorderSide(color: Colors.grey),
  );
  static final ButtonStyle continueWithAppleButton = ElevatedButton.styleFrom(
    backgroundColor: ColorItems.white,
    foregroundColor: ColorItems.black,
    minimumSize: Size(double.infinity, 50),
    side: BorderSide(color: Colors.grey),
  );
  static final ButtonStyle signInButton = ElevatedButton.styleFrom(
    backgroundColor: ColorItems.purple,
    foregroundColor: ColorItems.white,
    minimumSize: Size(double.infinity, 50),
  );
}

class ColorItems {
  static const Color purple = Colors.purple;
  static const Color black = Colors.black;
  static const Color white = Colors.white;
  static const Color grey = Colors.grey;
}

class ProjectPadding {
  static const pagePaddingAll = EdgeInsets.all(30.0);
}

class ProjectSpacer {
  static const double height1 = 10.0;
  static const double height2 = 25.0;
  static const double height3 = 12.0;
  static const double height4 = 20.0;
}
