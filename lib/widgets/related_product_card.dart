import 'package:flutter/material.dart';
import 'package:fooddelivery/models/my_cart_model.dart';
import 'package:fooddelivery/utils/app_style.dart';
import 'package:fooddelivery/utils/assets_app.dart';

class RelatedProductCard extends StatelessWidget {
  const RelatedProductCard({
    super.key,
    required this.myCartModel,
  });
  final MyCartModel myCartModel;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          Assets.imagesProductShape3,
          height: 170,
        ),
        Positioned(
          left: 25,
          child: Image.asset(
            myCartModel.product,
            height: 100,
          ),
        ),
        Positioned(
          bottom: 20,
          left: 40,
          child: Row(
            children: [
              Text(
                myCartModel.productName,
                style: AppStyle.styleBold20,
              ),
              const SizedBox(width: 30),
              Text(
                "${myCartModel.productSalary} E.G",
                style: AppStyle.styleBold16,
              ),
            ],
          ),
        )
      ],
    );
  }
}
