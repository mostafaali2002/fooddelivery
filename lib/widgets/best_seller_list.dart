import 'package:flutter/material.dart';
import 'package:fooddelivery/models/best_seller_model.dart';
import 'package:fooddelivery/widgets/best_seller_product_card.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
            bestSeller.length,
            (index) =>
                BestSellerProductCard(bestSellerModel: bestSeller[index])),
      ),
    );
  }
}
