import 'package:fooddelivery/models/my_cart_model.dart';
import 'package:fooddelivery/utils/assets_app.dart';

class BestSellerModel extends MyCartModel {
  final String categorName;
  const BestSellerModel(
      {required super.product,
      required this.categorName,
      required super.productName,
      required super.productSalary});
}

List<BestSellerModel> bestSeller = const [
  BestSellerModel(
      product: Assets.imagesFruite1,
      categorName: "Fruit",
      productName: "Fig",
      productSalary: "100"),
  BestSellerModel(
      product: Assets.imagesFruite2,
      categorName: "Fruit",
      productName: "Fig",
      productSalary: "100"),
  BestSellerModel(
      product: Assets.imagesFruite4,
      categorName: "Fruit",
      productName: "Fig",
      productSalary: "100"),
  BestSellerModel(
      product: Assets.imagesFruite5,
      categorName: "Fruit",
      productName: "Fig",
      productSalary: "100"),
];
List<BestSellerModel> forYou = const [
  BestSellerModel(
      product: Assets.imagesFruite3,
      categorName: "Fruit",
      productName: "Fig",
      productSalary: "100"),
  BestSellerModel(
      product: Assets.imagesFruite6,
      categorName: "Fruit",
      productName: "Fig",
      productSalary: "100"),
  BestSellerModel(
      product: Assets.imagesFruite4,
      categorName: "Fruit",
      productName: "Fig",
      productSalary: "100"),
];
