import 'package:flutter/material.dart';

class Category_model {
  String name;
  String icon_path;
  Color boxColor;

  Category_model({
    required this.name,
    required this.icon_path,
    required this.boxColor,
  });
  static List<Category_model> getCategories()
  {
    List<Category_model> Categories=[];

    Categories.add(
      Category_model(name: 'Salad', icon_path: 'assets/icons/salad.svg', boxColor: Colors.cyan)
    );

    Categories.add(
        Category_model(name: 'Cake', icon_path: 'assets/icons/cake.svg', boxColor: Colors.pinkAccent)
    );

    Categories.add(
        Category_model(name: 'Pie', icon_path: 'assets/icons/pie'
            '.svg', boxColor: Colors.cyan)
    );

    Categories.add(
        Category_model(name: 'Cake', icon_path: 'assets/icons/cake.svg', boxColor: Colors.pinkAccent)
    );
    Categories.add(
        Category_model(name: 'Pie', icon_path: 'assets/icons/pie.svg', boxColor: Colors.cyan)
    );
    return Categories;
  }
}