import 'package:flutter/widgets.dart';
import 'package:food_app/models/cart_items.dart';

class CartProvider extends ChangeNotifier {
  //cart items
  //items map
  final Map<String, CartItem> _cartItems = {};
  //set a getter to the cart items
  Map<String, CartItem> get cartItems => _cartItems;

  //add item to cart
  void addItem(CartItem item) {
    //check if the item is already in the cart
    if (_cartItems.containsKey(item.id)) {
      _cartItems.update(
        item.id,
        (existing) => existing.copyWith(quantity: existing.quantity + 1),
      );
    } else {
      _cartItems[item.id] = item;
    }
    //notify listeners
    notifyListeners();
  }

  //remove item from cart
  void removeItem(String id) {
    _cartItems.remove(id);
    notifyListeners();
  }

  //clear cart
  void clearCart() {
    _cartItems.clear();
    notifyListeners();
  }

  //length of the cart
  int get itemCount => _cartItems.length;

  //total Amount of the cart
  double get totalAmount => _cartItems.values.fold(
    0,
    (sum, item) => sum + item.price * item.quantity,
  );
}
