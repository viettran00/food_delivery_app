import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/models/category.dart';
import 'food_card.dart';
import '../datas/category_data.dart';

class FoodCategory extends StatelessWidget {
  final List<Category> categories = CATEGORIES;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context,index){
          return FoodCard(category: categories[index]);
        },
      ),
    );
  }
}
