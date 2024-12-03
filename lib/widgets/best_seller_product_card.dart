import 'package:flutter/material.dart';
import 'package:fooddelivery/models/best_seller_model.dart';
import 'package:fooddelivery/pages/product_page.dart';
import 'package:fooddelivery/utils/app_style.dart';
import 'package:fooddelivery/utils/assets_app.dart';

class BestSellerProductCard extends StatelessWidget {
  const BestSellerProductCard({super.key, required this.bestSellerModel});
  final BestSellerModel bestSellerModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductPage(myCartModel: bestSellerModel),
            ));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Image.asset(
              Assets.imagesHomeShape2,
              height: 200,
            ),
            Positioned(
              left: 10,
              top: -10,
              child: Image.asset(
                bestSellerModel.product,
                height: 120,
              ),
            ),
            Positioned(
              left: 20,
              bottom: 20,
              child: Column(
                children: [
                  Text(
                    bestSellerModel.categorName,
                    style: AppStyle.styleMedium24
                        .copyWith(color: Colors.white.withOpacity(.5)),
                  ),
                  Text(
                    bestSellerModel.productName,
                    style: AppStyle.styleMedium24,
                  ),
                ],
              ),
            ),
            Positioned(
              right: 20,
              top: 20,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                  size: 32,
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: Text(
                "${bestSellerModel.productSalary} E.G",
                style: AppStyle.styleMedium24.copyWith(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
