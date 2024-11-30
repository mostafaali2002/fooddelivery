import 'package:flutter/material.dart';
import 'package:fooddelivery/utils/app_style.dart';

class WelcomName extends StatelessWidget {
  const WelcomName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "Hello,",
          style: AppStyle.styleBold16,
        ),
        Text(
          "Mostafa",
          style: AppStyle.styleReguler15,
        ),
      ],
    );
  }
}
