import 'package:flutter/material.dart';
import 'package:fooddelivery/models/my_cart_model.dart';
import 'package:fooddelivery/widgets/my_cart_product_card.dart';

class MyCartProductsList extends StatelessWidget {
  const MyCartProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) =>
            MyCartProductCard(myCartModel: products[index]),
      ),
    );
  }
}
