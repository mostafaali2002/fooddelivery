import 'package:flutter/material.dart';
import 'package:fooddelivery/models/my_cart_model.dart';
import 'package:fooddelivery/utils/app_style.dart';
import 'package:fooddelivery/widgets/product_body.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key, required this.myCartModel});
  final MyCartModel myCartModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(226, 246, 246, 246),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppStyle.primaryColor,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border))
          ],
        ),
        body: ProductBody(
          myCartModel: myCartModel,
        ));
  }
}
