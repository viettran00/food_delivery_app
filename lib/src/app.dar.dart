import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/pages/main_page.dart';
import 'package:food_delivery_app/src/scoped_model/food_model.dart';
import 'package:scoped_model/scoped_model.dart';


class App extends StatelessWidget {
  final FoodModel foodModel = FoodModel();

  @override
  Widget build(BuildContext context) {
    return ScopedModel<FoodModel>(
      model: foodModel,
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Food Delivery ',
          theme: ThemeData(
            primaryColor: Colors.blueAccent,
          ),
          home: MainPage(foodModel: foodModel)
      ),
    );
  }
}
