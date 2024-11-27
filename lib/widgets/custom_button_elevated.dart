import 'package:flutter/material.dart';
import 'package:fooddelivery/utils/app_style.dart';

class CustomButtonElevated extends StatelessWidget {
  const CustomButtonElevated({
    super.key,
    required this.onPressed,
    required this.text,
    this.width = 300,
    this.height = 40,
    this.backgroundColor,
    this.style = AppStyle.styleBold20,
  });
  final Function()? onPressed;
  final String text;
  final double width, height;
  final MaterialStateProperty<Color?>? backgroundColor;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: width,
        height: height,
        child: ElevatedButton(
          style: ButtonStyle(
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
              backgroundColor: backgroundColor),
          onPressed: onPressed,
          child: Text(
            text,
            style: style,
          ),
        ),
      ),
    );
  }
}
