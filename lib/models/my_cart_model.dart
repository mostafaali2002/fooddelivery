import 'package:fooddelivery/utils/assets_app.dart';

class MyCartModel {
  final String product, productName, productSalary;

  const MyCartModel(
      {required this.product,
      required this.productName,
      required this.productSalary});
}

List<MyCartModel> myProducts = const [
  MyCartModel(
      product: Assets.imagesFruite1, productName: "Fig", productSalary: "100"),
  MyCartModel(
      product: Assets.imagesFruite2,
      productName: "product",
      productSalary: "100"),
  MyCartModel(
      product: Assets.imagesFruite3,
      productName: "product",
      productSalary: "100"),
  MyCartModel(
      product: Assets.imagesFruite4,
      productName: "product",
      productSalary: "150"),
  MyCartModel(
      product: Assets.imagesFruite5,
      productName: "product",
      productSalary: "150"),
  MyCartModel(
      product: Assets.imagesFruite6,
      productName: "product",
      productSalary: "150"),
];
List<MyCartModel> relatedProducts = const [
  MyCartModel(
      product: Assets.imagesFruite2,
      productName: "product",
      productSalary: "100"),
  MyCartModel(
      product: Assets.imagesFruite3,
      productName: "product",
      productSalary: "100"),
  MyCartModel(
      product: Assets.imagesFruite4,
      productName: "product",
      productSalary: "150"),
  MyCartModel(
      product: Assets.imagesFruite5,
      productName: "product",
      productSalary: "150"),
  MyCartModel(
      product: Assets.imagesFruite6,
      productName: "product",
      productSalary: "150"),
];
