import 'dart:math';

import 'package:loja/product.dart';
import 'package:loja/util.dart';

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

  String get totalFormatted => formatCurrency(total);
  String get priceFormatted => formatCurrency(price);

  CartItem add() => CartItem(
        product: product,
        price: price,
        quantity: min(quantity + 1, product.quantity),
      );

  CartItem sub() => CartItem(
        product: product,
        price: price,
        quantity: max(quantity - 1, 0),
      );
}
