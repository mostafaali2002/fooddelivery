import 'package:flutter/material.dart';
import 'package:fooddelivery/models/my_cart_model.dart';
import 'package:fooddelivery/utils/app_style.dart';
import 'package:fooddelivery/utils/assets_app.dart';

class ShowProduct extends StatelessWidget {
  const ShowProduct({
    super.key,
    required this.myCartModel,
    required this.numberOfProduct,
  });
  final MyCartModel myCartModel;
  final int numberOfProduct;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(Assets.imagesProductShape),
        Column(
          children: [
            Text(
              myCartModel.productName,
              style: AppStyle.styleMedium16,
            ),
            const SizedBox(height: 10),
            Text(
              "${myCartModel.productSalary} E.G",
              style: AppStyle.styleMedium24,
            ),
            const SizedBox(height: 70),
            Image.asset(myCartModel.product)
          ],
        )
      ],
    );
  }
}
