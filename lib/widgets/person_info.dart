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
          left: 150,
          top: 60,
          child: CircleAvatar(
            radius: 40,
            backgroundColor: Colors.black54,
          ),
        ),
        const Positioned(
          left: 140,
          top: 150,
          child: WelcomName(),
        ),
        const Positioned(
          left: 125,
          top: 170,
          child: PersonLocation(),
        ),
        Positioned(
          bottom: 70,
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
                height: 60,
                width: 60,
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
