import 'package:flutter/material.dart';

class WishListUtil {
  static const String appBarTitle = "My Wish List";
  static const String notFound = "Not Found";
  static const String wishListText =
      'Nothing on your wishlist! Add your favorite products to your wishlist and then ceonveniently find them!';
  static const String goShopping = "Go Shopping";
}

class WishListStyle {
  static const TextStyle notFound = TextStyle(
    wordSpacing: 3,
    fontSize: 30,
    fontWeight: FontWeight.w700,
    decoration: TextDecoration.none,
    fontStyle: FontStyle.normal,
    height: 3,
  );

  static const TextStyle wishListText = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );

  static final ButtonStyle goShoppingButton = OutlinedButton.styleFrom(
    backgroundColor: ColorItems.purple,
  );

  static const TextStyle goShopping = TextStyle(
    color: Colors.black,
    fontSize: 15,
  );
}

class ColorItems {
  static const Color purple = Colors.purple;
}

class ProjectSpacer {
  static const double width1 = 200.0;
  static const double height5 = 15.0;
}
