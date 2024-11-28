import 'package:flutter/material.dart';
import 'package:fooddelivery/utils/app_style.dart';
import 'package:fooddelivery/utils/assets_app.dart';
import 'package:fooddelivery/widgets/custom_button_elevated.dart';
import 'package:fooddelivery/widgets/custom_text_field.dart';
import 'package:fooddelivery/widgets/question_for_login.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(Assets.imagesSignupShape1),
            const Text("Welcom", style: AppStyle.styleBold24),
            const SizedBox(height: 22),
            CustomTextFieldLogin(
              hint: "Name",
              prefixIcon: Icon(
                Icons.person,
                color: Colors.black.withOpacity(.3),
              ),
            ),
            const SizedBox(height: 19),
            CustomTextFieldLogin(
              hint: "Email",
              prefixIcon: Icon(
                Icons.email,
                color: Colors.black.withOpacity(.3),
              ),
            ),
            const SizedBox(height: 19),
            CustomTextFieldLogin(
              hint: "Phone",
              prefixIcon: Icon(
                Icons.phone,
                color: Colors.black.withOpacity(.3),
              ),
            ),
            const SizedBox(height: 19),
            CustomTextFieldLogin(
              hint: "Password",
              obscure: true,
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.black.withOpacity(.3),
              ),
            ),
            const SizedBox(height: 20),
            CustomButtonElevated(
              onPressed: () {},
              text: "Sign up",
              backgroundColor: MaterialStatePropertyAll(AppStyle.primaryColor),
            ),
            const SizedBox(height: 20),
            QuestionForLogin(
              onPressed: () {},
              text1: "Already have an account ?",
              text2: "Login",
            ),
            Image.asset(Assets.imagesLoginshape),
          ],
        ),
      ),
    );
  }
}
