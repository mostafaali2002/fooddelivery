import 'package:flutter/material.dart';
import 'package:fooddelivery/pages/home_page.dart';
import 'package:fooddelivery/utils/app_style.dart';
import 'package:fooddelivery/utils/assets_app.dart';
import 'package:fooddelivery/widgets/custom_button_elevated.dart';

class MyCartTotalPrices extends StatelessWidget {
  const MyCartTotalPrices({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(Assets.imagesCartShape),
        const Positioned(
          top: 40,
          left: 150,
          child: Text(
            "subTotal:  800 E.G",
            style: AppStyle.styleBold16,
          ),
        ),
        const Positioned(
          top: 70,
          left: 150,
          child: Text(
            "Tax:           200 E.G",
            style: AppStyle.styleBold16,
          ),
        ),
        Positioned(
          top: 130,
          left: 110,
          child: Row(
            children: [
              Text(
                "1000 E.G",
                style: AppStyle.styleBold20.copyWith(color: Colors.white),
              ),
              CustomButtonElevated(
                width: 150,
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ));
                },
                text: "Finalize order",
                backgroundColor: const MaterialStatePropertyAll(Colors.black),
                style: AppStyle.styleBold16.copyWith(color: Colors.white),
              )
            ],
          ),
        )
      ],
    );
  }
}
