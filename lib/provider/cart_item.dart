import 'package:flutter/material.dart';

class CartItem extends ChangeNotifier {
  List<String> _cartItems = [];

  int get cartSize => _cartItems.length;

  List<String> get cartList => _cartItems;

  void addCartItem(String item) {
    _cartItems.add(item);
    notifyListeners();
  }
}
