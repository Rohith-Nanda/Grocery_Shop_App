import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = const [

    ["Avocado", "80", "lib/images/avocado.png", Colors.green],
    ["Banana", "25", "lib/images/banana.png", Colors.yellow],
    ["Chicken", "100", "lib/images/chicken.png", Colors.brown],
    ["Water", "30", "lib/images/water.png", Colors.blue],
    ["Strawberry","60","lib/images/strawberry.png",Colors.pinkAccent]
  ];


  List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _shopItems;

  
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }


  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

 
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}