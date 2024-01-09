import 'package:ecommerce/pages/LoginPage.dart';
import 'package:ecommerce/pages/homePage.dart';
import 'package:ecommerce/pages/newArrival.dart';
import 'package:ecommerce/pages/productDetail.dart';
import 'package:ecommerce/pages/productPage.dart';
import 'package:ecommerce/pages/shoppingCard.dart';
import 'package:ecommerce/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themedata,
      home: const ShoppingCardPage(),
    );
  }
}
