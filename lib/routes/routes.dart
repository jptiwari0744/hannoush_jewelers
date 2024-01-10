import 'package:flutter/material.dart';

import '../screen/LoginPage.dart';
import '../screen/homePage.dart';
import '../screen/newArrival.dart';
import '../screen/productDetail.dart';
import '../screen/productPage.dart';
import '../screen/shoppingCard.dart';

var allRoutes = {
  '/login': (BuildContext context) => LoginPage(),
  '/newArrival': (BuildContext context) => NewArrivalPage(),
  '/Product': (BuildContext context) => ProductPage(),
  '/productDetail': (BuildContext context) => ProductDetailPage(),
  '/home': (BuildContext context) => HomePage(),
  '/shoppingCart': (BuildContext context) => ShoppingCardPage(),
};
