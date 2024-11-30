import 'package:flutter/material.dart';
import 'package:fooddelivery/utils/assets_app.dart';
import 'package:fooddelivery/widgets/custom_text_field.dart';
import 'package:fooddelivery/widgets/person_location.dart';
import 'package:fooddelivery/widgets/welcom_name.dart';

class PersonInfo extends StatelessWidget {
  const PersonInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(Assets.imagesHomeShape),
        const Positioned(
          left: 38,
          top: 20,
          child: CircleAvatar(
            radius: 25,
          ),
        ),
        const Positioned(
          left: 20,
          top: 70,
          child: WelcomName(),
        ),
        const Positioned(
          left: 12,
          top: 90,
          child: PersonLocation(),
        ),
        Positioned(
          bottom: 150,
          left: 0,
          child: Row(
            children: [
              const SizedBox(
                width: 300,
                child: CustomTextFieldLogin(
                  hint: "search",
                  suffixIcon: Icon(Icons.search),
                ),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Image.asset(
                  "assets/icons/setting.png",
                  height: 10,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
