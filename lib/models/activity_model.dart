import 'package:flutter/material.dart';

class activityModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String calorie;
  Color boxColor;
  bool viewIsSelected;

  activityModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calorie,
    required this.boxColor,
    required this.viewIsSelected
  });

  static List < activityModel > getactivitys() {
    List < activityModel > activitys = [];

    activitys.add(
      activityModel(
       name: 'Honey Pancake',
       iconPath: 'assets/icons/honey-pancakes.svg',
       level: 'Easy',
       duration: '30mins',
       calorie: '180kCal',
       viewIsSelected: true,
       boxColor: Color(0xff9DCEFF)
      )
    );

    activitys.add(
      activityModel(
       name: 'Canai Bread',
       iconPath: 'assets/icons/canai-bread.svg',
       level: 'Easy',
       duration: '20mins',
       calorie: '230kCal',
       viewIsSelected: false,
       boxColor: Color(0xffEEA4CE)
      )
    );

    return activitys;
  }
}