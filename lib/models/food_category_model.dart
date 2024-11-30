import 'package:fooddelivery/utils/assets_app.dart';

class FoodCategoryModel {
  final String categoryImage, categoryName;

  const FoodCategoryModel(
      {required this.categoryImage, required this.categoryName});
}

List<FoodCategoryModel> foodCategory = const [
  FoodCategoryModel(categoryImage: Assets.iconsBakery, categoryName: "Bakery"),
  FoodCategoryModel(categoryImage: Assets.iconsJuice, categoryName: "Juice"),
  FoodCategoryModel(
      categoryImage: Assets.iconsCoupons, categoryName: "Coupons"),
  FoodCategoryModel(
      categoryImage: Assets.iconsVegetable, categoryName: "Vegetable"),
  FoodCategoryModel(
      categoryImage: Assets.iconsHarvest, categoryName: "Harvest"),
];
