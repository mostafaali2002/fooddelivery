import 'package:flutter/material.dart';
import 'package:fooddelivery/models/food_category_model.dart';
import 'package:fooddelivery/utils/app_style.dart';

class FoodCategoryCard extends StatelessWidget {
  const FoodCategoryCard({
    super.key,
    required this.foodCategoryModel,
  });
  final FoodCategoryModel foodCategoryModel;
  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Image.asset(
                foodCategoryModel.categoryImage,
                height: 70,
              ),
              const SizedBox(height: 10),
              Text(
                foodCategoryModel.categoryName,
                style: AppStyle.styleBold16,
              )
            ],
          ),
        ));
  }
}
