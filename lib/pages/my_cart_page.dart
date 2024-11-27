import 'package:flutter/material.dart';
import 'package:fooddelivery/utils/app_style.dart';
import 'package:fooddelivery/widgets/my_cart_products_list.dart';
import 'package:fooddelivery/widgets/my_cart_total_prices.dart';

class MyCartPage extends StatelessWidget {
  const MyCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppStyle.backgroundColor,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "My Cart",
              style: AppStyle.styleBold24,
            ),
          ),
          SizedBox(height: 37),
          MyCartProductsList(),
          MyCartTotalPrices()
        ],
      ),
    );
  }
}
