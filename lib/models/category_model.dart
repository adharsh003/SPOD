import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });
  
  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];
    
    categories.add(
      CategoryModel(
        name: 'Basketball',
        iconPath: 'assets/catogery/catogery 4.png',
        boxColor: Color.fromARGB(255, 224, 35, 98)      )
    );

    categories.add(
      CategoryModel(
        name: 'Football',
        iconPath: 'assets/catogery/catogery 1.png',
        boxColor: Color.fromARGB(255, 224, 35, 98)
      )
    );

    categories.add(
      CategoryModel(
        name: 'Cricket',
        iconPath: 'assets/catogery/catogery 2.png',
        boxColor: Color.fromARGB(255, 224, 35, 98)
      )
    );

    categories.add(
      CategoryModel(
        name: 'Tennis',
        iconPath: 'assets/catogery/catogery 3.png',
        boxColor: Color.fromARGB(255, 224, 35, 98)
      )
    );
    

    return categories;
  }
}