import 'package:flutter/material.dart';
import 'package:fooddelivery/utils/app_style.dart';
import 'package:fooddelivery/widgets/best_seller_list.dart';
import 'package:fooddelivery/widgets/food_category_list.dart';
import 'package:fooddelivery/widgets/for_you_list.dart';
import 'package:fooddelivery/widgets/person_info.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppStyle.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PersonInfo(),
            FoodCategoryList(),
            SizedBox(height: 26),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Best Seller",
                style: AppStyle.styleBold20,
              ),
            ),
            SizedBox(height: 15),
            BestSellerList(),
            SizedBox(height: 26),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "For You",
                style: AppStyle.styleBold20,
              ),
            ),
            SizedBox(height: 15),
            ForYouList(),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
