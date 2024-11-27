import 'package:flutter/material.dart';
import 'package:fooddelivery/utils/app_style.dart';
import 'package:fooddelivery/utils/assets_app.dart';
import 'package:fooddelivery/widgets/custom_button_elevated.dart';
import 'package:fooddelivery/widgets/custom_checkbox.dart';
import 'package:fooddelivery/widgets/custom_text_field.dart';
import 'package:fooddelivery/widgets/question_for_login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(Assets.imagesLoginshape2),
          const Text("Welcom Back", style: AppStyle.styleBold24),
          const SizedBox(height: 28),
          CustomTextFieldLogin(
            hint: "Email",
            prefixIcon: Icon(
              Icons.email,
              color: Colors.black.withOpacity(.3),
            ),
          ),
          const SizedBox(height: 28),
          CustomTextFieldLogin(
            hint: "Password",
            obscure: true,
            prefixIcon: Icon(
              Icons.lock,
              color: Colors.black.withOpacity(.3),
            ),
          ),
          const SizedBox(height: 20),
          CustomCheckBox(),
          const SizedBox(height: 20),
          CustomButtonElevated(onPressed: () {}, text: "Login"),
          const SizedBox(height: 20),
          QuestionForLogin(
            onPressed: () {},
            text1: "Don't have an account ?",
            text2: "Sign up",
          ),
          const Expanded(child: SizedBox()),
          Image.asset(Assets.imagesLoginshape),
        ],
      ),
    );
  }
}
