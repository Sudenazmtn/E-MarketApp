import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/home_screen_util.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(HomeScreenUtil.appBarTitle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/eMarket.png',
              width: HomePictureDimension.width1,
              height: HomePictureDimension.height1,
            ),
            Text(HomeScreenUtil.homeScreenText,
                style: HomeScreenStyle.homeScreenStyle),
          ],
        ),
      ),
    );
  }
}
