import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/splash_screen_util.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(ProjectTimer.duration, () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ProjectColor.white,
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              'assets/eMarket.png',
              width: SplashPictureDimension.width1,
              height: SplashPictureDimension.height1,
            ),
            const SizedBox(height: ProjectSpacer.height1),
            const Text(
              SplashScreenUtil.splashTitle,
              style: SplashScreenStyle.splashTitle,
            ),
            const SizedBox(height: ProjectSpacer.height1),
            const CircularProgressIndicator(),
          ]),
        ));
  }
}
