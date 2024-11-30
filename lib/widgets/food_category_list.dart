import 'package:flutter/material.dart';
import 'package:fooddelivery/models/food_category_model.dart';
import 'package:fooddelivery/widgets/food_category_card.dart';

class FoodCategoryList extends StatelessWidget {
  const FoodCategoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
            foodCategory.length,
            (index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child:
                      FoodCategoryCard(foodCategoryModel: foodCategory[index]),
                )),
      ),
    );
  }
}
