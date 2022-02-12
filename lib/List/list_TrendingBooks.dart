import 'package:flutter/cupertino.dart';

class TrendingBooks_List {
  final String name;
  final String detils;
  final String image;
  final String pric;

  TrendingBooks_List(this.name, this.detils, this.image, this.pric);
}

// ignore: non_constant_identifier_names
List<TrendingBooks_List> trendingBooks_List = [
  TrendingBooks_List("The Fatal ", "by Jake Arnott",
      "assets/image/The Fatal Tree.png", "20.00"),
  TrendingBooks_List(
      "Day Four", "by LOTZ, SARAH", "assets/image/Day Four.png", "25.00"),
  TrendingBooks_List(
      "Door to Door", 'by Edward Humes', "assets/image/D-1.png", "22.00"),
  TrendingBooks_List("Star Trek", 'by Edward Humes',
      "assets/image/Graphic Novels.png", "30.00"),
];
// ignore: non_constant_identifier_names
List<TrendingBooks_List> trendingBooks_List2 = [
  TrendingBooks_List("The firm", "by Jake Arnott", "assets/image/2.png", ""),
  TrendingBooks_List(
      "Illegal", "by Jake Arnott", "assets/image/Illegal.png", ""),
  TrendingBooks_List(
      "Door to Door", 'by Edward Humes', "assets/image/D-3.png", ""),
  TrendingBooks_List(
      "The Great ", 'by Jake Arnott', "assets/image/asset-1.png", ""),
];
