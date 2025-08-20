import 'package:flutter/material.dart';
import 'package:coffee_shop/models/coffee.dart';

class CoffeeShop extends ChangeNotifier {
  // coffee for sale list
  final List<Coffee> _shop = [
    //black coffee
    Coffee(
      name: 'Long Black',
      price: '4.10',
      imagePath: 'lib/images/cup-of-drink.png',
    ),
    // latte
    Coffee(
      name: 'Latte',
      price: '5.10',
      imagePath: 'lib/images/latte-art.png',
    ),
    // espresso
    Coffee(
      name: 'Espresso',
      price: '3.20',
      imagePath: 'lib/images/coffee-cup.png',
    ),

    //iced coffee
    Coffee(
      name: 'Iced Coffee',
      price: '4.88',
      imagePath: 'lib/images/cup.png',
    ),
  ];

  //user cart
  final List<Coffee> _userCart = [];

  //get cofee list
  List<Coffee> get coffeeShop => _shop;

  //get user cart
  List<Coffee> get userCart => _userCart;

  // add itm to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
