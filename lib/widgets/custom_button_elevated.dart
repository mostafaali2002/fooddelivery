import 'package:flutter/material.dart';
import 'package:fooddelivery/utils/app_style.dart';

class CustomButtonElevated extends StatelessWidget {
  const CustomButtonElevated({
    super.key,
    required this.onPressed,
    required this.text,
  });
  final Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: 300,
        height: 40,
        child: ElevatedButton(
          style: ButtonStyle(
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
              backgroundColor:
                  const MaterialStatePropertyAll(AppStyle.primaryColor)),
          onPressed: onPressed,
          child: Text(
            text,
            style: AppStyle.styleBold20,
          ),
        ),
      ),
    );
  }
}
