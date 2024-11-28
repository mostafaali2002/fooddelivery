import 'package:flutter/material.dart';
import 'package:fooddelivery/models/my_cart_model.dart';
import 'package:fooddelivery/utils/app_style.dart';
import 'package:fooddelivery/utils/assets_app.dart';
import 'package:fooddelivery/widgets/custom_button_elevated.dart';

class MyCartProductCard extends StatefulWidget {
  const MyCartProductCard({
    super.key,
    required this.myCartModel,
  });
  final MyCartModel myCartModel;

  @override
  State<MyCartProductCard> createState() => _MyCartProductCardState();
}

class _MyCartProductCardState extends State<MyCartProductCard> {
  int numberOfProduct = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: Stack(
        children: [
          Image.asset(Assets.imagesCartShape2),
          Positioned(
            left: 10,
            top: 40,
            child: Image.asset(
              widget.myCartModel.product,
              height: 105,
            ),
          ),
          Positioned(
            right: 60,
            top: 20,
            child: Column(
              children: [
                Text(
                  widget.myCartModel.productName,
                  style: AppStyle.styleMedium24
                      .copyWith(color: Colors.black.withOpacity(.5)),
                ),
                const SizedBox(height: 10),
                Text(
                  "${int.parse(widget.myCartModel.productSalary) * numberOfProduct} E.G",
                  style: AppStyle.styleMedium24,
                ),
              ],
            ),
          ),
          Positioned(
            right: 20,
            bottom: 40,
            child: Row(
              children: [
                CustomButtonElevated(
                  onPressed: () {
                    setState(() {
                      if (numberOfProduct > 1) numberOfProduct--;
                    });
                  },
                  text: "-",
                  backgroundColor: const MaterialStatePropertyAll(Colors.grey),
                  width: 40,
                  height: 40,
                ),
                Text(
                  "${numberOfProduct}",
                  style: AppStyle.styleBold20,
                ),
                CustomButtonElevated(
                  onPressed: () {
                    setState(() {
                      numberOfProduct++;
                    });
                  },
                  text: "+",
                  backgroundColor:
                      const MaterialStatePropertyAll(AppStyle.primaryColor),
                  width: 40,
                  height: 40,
                  style: AppStyle.styleBold24
                      .copyWith(color: AppStyle.backgroundColor),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
