import 'package:flutter/material.dart';
import 'package:flutter_application_1/wish_list_util.dart';

class WishList extends StatelessWidget {
  const WishList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(WishListUtil.appBarTitle),
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.chevron_left_sharp)),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              WishListUtil.notFound,
              textAlign: TextAlign.justify,
              style: WishListStyle.notFound,
            ),
            Text(
              WishListUtil.wishListText,
              textAlign: TextAlign.center,
              overflow: TextOverflow.visible,
              style: WishListStyle.wishListText,
            ),
            SizedBox(height: ProjectSpacer.height5),
            OutlinedButton(
                style: WishListStyle.goShoppingButton,
                onPressed: () {},
                child: const SizedBox(
                    width: ProjectSpacer.width1,
                    child: Text(
                      WishListUtil.goShopping,
                      style: WishListStyle.goShopping,
                      textAlign: TextAlign.center,
                    ))),
          ],
        ),
      ),
    );
  }
}
