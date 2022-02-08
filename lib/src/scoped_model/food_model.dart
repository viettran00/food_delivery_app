import 'dart:convert';

import 'package:food_delivery_app/src/models/food.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:http/http.dart' as http;

class FoodModel extends Model{
  List<Food> _foods = [];

  List<Food> get foods{
    return List.from(_foods);
  }

  void addFood(Food food){
    _foods.add(food);
  }

  void fetchFood(){
    final localhost = "192.168.31.145";
    final getFoodURL = "foods/getFood.php";
    final ngrok = "http://4fdaea204e04.ngrok.io";

    //Uri url = Uri.parse("http://$localhost/flutter_food_app/api/$getFoodURL");
    Uri url = Uri.parse("$ngrok/flutter_food_app/api/foods/getFood.php");

    List<Food> fetchFoodItems = [];
    http.get(url).then((http.Response response){
      final List fetchData = jsonDecode(response.body);
      fetchData.forEach((foodItem) {
        Food food = new Food(
          id: foodItem["id"],
          foodName: foodItem["title"],
          price: double.parse(foodItem["price"]),
          discount: double.parse(foodItem["discount"]),
          category: foodItem["category_id"],
          imagePath: "assets/images/${foodItem["image_path"]}"
        );
        fetchFoodItems.add(food);
      });
      _foods = fetchFoodItems;
      print("list: $_foods");
    });
  }
}