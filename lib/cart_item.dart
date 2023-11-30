import 'dart:math';

import 'package:loja/product.dart';

class CartItem {
  final Product product;
  final double price;
  final int quantity;

  CartItem({
    required this.product,
    required this.price,
    required this.quantity,
  });

  double get total => price * quantity;

  CartItem add() {
    return CartItem(
      product: product, 
      price: price, 
      quantity: min(quantity + 1, product.quantity),
    );
  }

  CartItem remove() {
    return CartItem(
      product: product, 
      price: price, 
      quantity: max(quantity - 1, 0),
    );
  }
}