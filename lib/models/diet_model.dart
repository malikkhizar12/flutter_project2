import 'package:flutter/material.dart';

class DietModel{
  String icon_path;
  String name;
  String level;
  Color box_color;
  String time;
  String Calories;
  bool isSelected;
  DietModel(
  {
    required this.icon_path,
    required this.name,
    required this.level,
    required this.box_color,
    required this.time,
    required this.Calories,
    required this.isSelected
  }
      );
 static List <DietModel> getRecommendedDiet()
  {
    List <DietModel> RecommendedDiet=[];
    RecommendedDiet.add(
      DietModel(icon_path: 'assets/icons/pie.svg', name: 'Honey Pancake', level: 'Easy',
          box_color: Colors.cyan, time: '30 mins', Calories: '180 cal',isSelected: true)
    );
    RecommendedDiet.add(
        DietModel(icon_path: 'assets/icons/salad.svg', name: 'Fresh Salad', level: 'Easy',
            box_color: Colors.pinkAccent, time: '30 mins', Calories: '180 cal',isSelected: false)
    );
    RecommendedDiet.add(
        DietModel(icon_path: 'assets/icons/cake.svg', name: 'Sugar free cake', level: 'Easy',
            box_color: Colors.cyan, time: '30 mins', Calories: '180 cal',isSelected: false)
    );
    return RecommendedDiet;
  }
}