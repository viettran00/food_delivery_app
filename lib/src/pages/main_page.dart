import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/pages/cart_page.dart';
import 'package:food_delivery_app/src/pages/explore_page.dart';
import 'package:food_delivery_app/src/pages/home_page.dart';
import 'package:food_delivery_app/src/pages/profile_page.dart';
import 'package:food_delivery_app/src/scoped_model/food_model.dart';

class MainPage extends StatefulWidget {

  final FoodModel foodModel;

  MainPage({this.foodModel});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int _currentIndex = 0;
  List<Widget> pages;
  HomePage homePage;
  CartPage cartPage;
  ExplorePage explorePage;
  ProfilePage profilePage;

  Widget currentPage;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    homePage = new HomePage(foodModel: widget.foodModel);
    cartPage = new CartPage();
    explorePage = new ExplorePage();
    profilePage = new ProfilePage();

    pages = [homePage, explorePage,cartPage, profilePage];
    currentPage = homePage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex = index;
            currentPage = pages[index];
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: "Explore",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Cart",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_pin),
              label: "Profile",
          ),
        ],
      ),
      body: currentPage,
    );
  }
}
