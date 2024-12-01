import 'package:flutter/material.dart';
import 'package:fooddelivery/models/my_cart_model.dart';
import 'package:fooddelivery/pages/my_cart_page.dart';
import 'package:fooddelivery/utils/app_style.dart';
import 'package:fooddelivery/widgets/custom_button_elevated.dart';
import 'package:fooddelivery/widgets/related_product_list.dart';
import 'package:fooddelivery/widgets/show_product.dart';

class ProductBody extends StatefulWidget {
  const ProductBody({
    super.key,
    required this.myCartModel,
  });
  final MyCartModel myCartModel;

  @override
  State<ProductBody> createState() => _ProductBodyState();
}

class _ProductBodyState extends State<ProductBody> {
  int numberOfProduct = 1;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShowProduct(
              myCartModel: widget.myCartModel,
              numberOfProduct: numberOfProduct),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${int.parse(widget.myCartModel.productSalary) * numberOfProduct} E.G",
                style: AppStyle.styleMedium24,
              ),
              CustomButtonElevated(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyCartPage(),
                      ));
                },
                text: "Add",
                width: 200,
                backgroundColor:
                    const MaterialStatePropertyAll(AppStyle.primaryColor),
              )
            ],
          ),
          const SizedBox(height: 50),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 22),
            child: Text(
              "Related",
              style: AppStyle.styleBold20,
            ),
          ),
          const SizedBox(height: 15),
          RelatedProductList()
        ],
      ),
    );
  }
}
