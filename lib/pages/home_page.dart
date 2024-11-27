import 'package:flutter/material.dart';
import 'package:fooddelivery/utils/assets_app.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(Assets.imagesHomeShape),
            ],
          ),
        ],
      ),
    );
  }
}
