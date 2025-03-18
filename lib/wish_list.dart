import 'package:flutter/material.dart';
import 'package:flutter_application_1/login_page_util.dart';

class WishList extends StatelessWidget {
  const WishList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LoginPageUtil.appBarTitle),
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.chevron_left_sharp)),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              LoginPageUtil.notFound,
              textAlign: TextAlign.justify,
              style: LoginPageStyle.notFound,
            ),
            Text(
              LoginPageUtil.wishListText,
              textAlign: TextAlign.center,
              overflow: TextOverflow.visible,
              style: LoginPageStyle.wishListText,
            ),
            SizedBox(height: ProjectSpacer.height5),
            OutlinedButton(
                style: LoginPageStyle.goShoppingButton,
                onPressed: () {},
                child: const SizedBox(
                    width: ProjectSpacer.width1,
                    child: Text(
                      LoginPageUtil.goShopping,
                      style: LoginPageStyle.goShopping,
                      textAlign: TextAlign.center,
                    ))),
          ],
        ),
      ),
    );
  }
}
