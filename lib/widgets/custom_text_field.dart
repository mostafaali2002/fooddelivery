import 'package:flutter/material.dart';
import 'package:fooddelivery/utils/app_style.dart';

class CustomTextFieldLogin extends StatelessWidget {
  const CustomTextFieldLogin({
    this.obscure = false,
    super.key,
    required this.hint,
    this.prefixIcon,
    this.suffixIcon,
  });
  final String hint;
  final bool obscure;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextFormField(
        style: const TextStyle(color: Colors.black),
        obscureText: obscure,
        validator: (value) {
          if (value!.isEmpty) {
            return '$hint is empty';
          }
          return null;
        },
        decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            suffixIconColor: Colors.black,
            fillColor: Colors.white,
            filled: true,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(color: Colors.black)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(color: Colors.white)),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            hintText: "$hint",
            hintStyle: AppStyle.styleReguler15
                .copyWith(color: Colors.black.withOpacity(.5))),
      ),
    );
  }
}
