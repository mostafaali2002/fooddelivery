import 'package:flutter/material.dart';
import 'package:fooddelivery/utils/app_style.dart';

class QuestionForLogin extends StatelessWidget {
  const QuestionForLogin({
    super.key,
    required this.text1,
    required this.text2,
    this.onPressed,
  });
  final String text1, text2;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: AppStyle.styleReguler15,
        ),
        TextButton(
            onPressed: onPressed,
            child: Text(
              text2,
              style: AppStyle.styleBold16,
            ))
      ],
    );
  }
}
