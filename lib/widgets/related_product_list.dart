import 'package:flutter/material.dart';
import 'package:fooddelivery/models/my_cart_model.dart';
import 'package:fooddelivery/widgets/related_product_card.dart';

class RelatedProductList extends StatelessWidget {
  const RelatedProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
            relatedProducts.length,
            (index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: RelatedProductCard(
                    myCartModel: relatedProducts[index],
                  ),
                )),
      ),
    );
  }
}
