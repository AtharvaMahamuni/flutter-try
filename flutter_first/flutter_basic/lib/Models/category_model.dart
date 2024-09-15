import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  Icon iconPack;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.iconPack,
    required this.boxColor,
  });

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(CategoryModel(
        name: "Salad",
        iconPack: const Icon(Icons.alarm),
        boxColor: Colors.amber.shade100));
    categories.add(CategoryModel(
        name: "Rice",
        iconPack: const Icon(Icons.alarm),
        boxColor: Colors.red.shade100));
    categories.add(CategoryModel(
        name: "Soup",
        iconPack: const Icon(Icons.alarm),
        boxColor: Colors.green.shade100));

    return categories;
  }
}
