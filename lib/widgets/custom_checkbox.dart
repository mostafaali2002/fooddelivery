import 'package:flutter/material.dart';
import 'package:fooddelivery/utils/app_style.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({
    super.key,
  });

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Checkbox(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            checkColor: AppStyle.primaryColor,
            activeColor: AppStyle.primaryColor,
            side: BorderSide(width: 1, color: AppStyle.primaryColor),
            fillColor: MaterialStatePropertyAll(AppStyle.backgroundColor),
            value: isActive,
            onChanged: (value) {
              setState(() {
                isActive = value!;
              });
            },
          ),
          const Text(
            "Remember me",
            style: AppStyle.styleBold16,
          )
        ],
      ),
    );
  }
}
