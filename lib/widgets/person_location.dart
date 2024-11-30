import 'package:flutter/material.dart';
import 'package:fooddelivery/utils/app_style.dart';

class PersonLocation extends StatelessWidget {
  const PersonLocation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.location_on_outlined,
          color: Colors.white,
        ),
        Text(
          "Egypt,Banha",
          style: AppStyle.styleMedium16,
        )
      ],
    );
  }
}
