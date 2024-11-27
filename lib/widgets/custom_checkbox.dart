import 'package:flutter/material.dart';
import 'package:fooddelivery/utils/app_style.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isActive = false;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Checkbox(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            checkColor: AppStyle.primaryColor,
            fillColor: MaterialStatePropertyAll(AppStyle.backgroundColor),
            value: isActive,
            onChanged: (value) {},
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
