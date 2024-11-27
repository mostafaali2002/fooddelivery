import 'package:flutter/material.dart';
import 'package:fooddelivery/pages/login_page.dart';
import 'package:fooddelivery/pages/my_cart_page.dart';

void main() {
  runApp(const FoodDelivery());
}

class FoodDelivery extends StatelessWidget {
  const FoodDelivery({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCartPage(),
    );
  }
}
