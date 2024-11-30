import 'package:flutter/material.dart';
import 'package:fooddelivery/pages/home_page.dart';

void main() {
  runApp(const FoodDelivery());
}

class FoodDelivery extends StatelessWidget {
  const FoodDelivery({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
