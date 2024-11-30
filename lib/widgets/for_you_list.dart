import 'package:flutter/material.dart';
import 'package:fooddelivery/models/best_seller_model.dart';
import 'package:fooddelivery/widgets/best_seller_product_card.dart';

class ForYouList extends StatelessWidget {
  const ForYouList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(forYou.length,
            (index) => BestSellerProductCard(bestSellerModel: forYou[index])),
      ),
    );
  }
}
