import 'package:flutter/material.dart';
import 'package:fooddelivery/models/my_cart_model.dart';
import 'package:fooddelivery/pages/my_cart_page.dart';
import 'package:fooddelivery/pages/product_page.dart';
import 'package:fooddelivery/utils/assets_app.dart';

void main() {
  runApp(const FoodDelivery());
}

class FoodDelivery extends StatelessWidget {
  const FoodDelivery({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductPage(
          myCartModel: MyCartModel(
              product: Assets.imagesFruite1,
              productName: "productName",
              productSalary: "100")),
    );
  }
}
