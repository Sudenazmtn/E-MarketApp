import 'package:flutter/material.dart';
import 'package:flutter_application_1/login_page_util.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInPage(),
    );
  }
}

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _isrememberMe = false; // variable for checkbox status

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: ProjectPadding.pagePaddingAll,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                LoginPageUtil.titleWelcome,
                style: LoginPageStyle.titleWelcome,
              ),
              SizedBox(height: ProjectSpacer.height1),
              Text(
                LoginPageUtil.titleSignIn,
                style: LoginPageStyle.titleSignIn,
              ),
              SizedBox(height: ProjectSpacer.height2),
              TextField(
                decoration: InputDecoration(
                  labelText: LoginPageUtil.mailText,
                  labelStyle: LoginPageStyle.mailText,
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: ProjectSpacer.height3),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: LoginPageUtil.passwordText,
                  labelStyle: LoginPageStyle.password,
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.visibility),
                ),
              ),
              SizedBox(height: ProjectSpacer.height1),
              Row(
                children: [
                  Checkbox(
                    value: _isrememberMe,
                    onChanged: (bool? value) {
                      updateRememberMeSelection(value);
                    },
                  ),
                  Text(LoginPageUtil.rememberMe),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      LoginPageUtil.titleForgot,
                      style: LoginPageStyle.titleForgot,
                    ),
                  )
                ],
              ),
              SizedBox(height: ProjectSpacer.height4),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.g_mobiledata,
                  color: ColorItems.black,
                  size: 28,
                ),
                label: Text(LoginPageUtil.continueWithGoogle),
                style: LoginPageStyle.continueWithGoogleButton,
              ),
              SizedBox(height: ProjectSpacer.height1),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.apple, color: Colors.black),
                label: Text(LoginPageUtil.continueWithApple),
                style: LoginPageStyle.continueWithAppleButton,
              ),
              SizedBox(height: ProjectSpacer.height4),
              ElevatedButton(
                onPressed: () {
                  print(
                      "${LoginPageUtil.rememberMe}: $_isrememberMe"); // prints status on console
                },
                child: Text(LoginPageUtil.signInButton),
                style: LoginPageStyle.signInButton,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void updateRememberMeSelection(bool? value) {
    setState(() {
      _isrememberMe = value ?? false; // updates the value
    });
  }
}
