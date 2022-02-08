import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/scoped_model/food_model.dart';
import 'package:food_delivery_app/src/widgets/bought_food.dart';
import 'package:food_delivery_app/src/widgets/food_category.dart';
import 'package:food_delivery_app/src/widgets/home_top_info.dart';
import 'package:food_delivery_app/src/widgets/search_field.dart';

class HomePage extends StatefulWidget {

  final FoodModel foodModel;

  HomePage({this.foodModel});

  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  // List<Food> foods = FOODS;

  @override
  void initState(){
    super.initState();
    widget.foodModel.fetchFood();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(20.0),
          children: <Widget>[
            HomeTopInfo(),
            FoodCategory(),
            SearchField(),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Frequently Bought Food",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                GestureDetector(
                  onTap: (){
                    print("view all");
                    widget.foodModel.fetchFood();
                  },
                  child: Text(
                    "View all",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.orange
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0,),
            Column(
              children: widget.foodModel.foods.map((food){
                return _buildFoodItem(food);
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
  Widget _buildFoodItem(food){
    return  Container(
      padding: EdgeInsets.only(top: 20.0),
      child: BoughtFood(food: food,),
    );
  }
}
