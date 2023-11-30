import 'package:flutter/foundation.dart';
import 'package:loja/cart_item.dart';
import 'package:loja/product.dart';

class CartViewModel extends ChangeNotifier {
  final List<CartItem> items = [];

  bool isInCart(Product product) =>
      items.where((i) => i.product.id == product.id).isNotEmpty;

  void add(Product product) {
    int index = items.indexWhere((i) => i.product.id == product.id);

    if (index != -1) {
      items[index] = items[index].add();
    } else {
      items.add(CartItem(
        product: product,
        price: product.salePrice,
        quantity: 1,
      ));
    }

    notifyListeners();
  }

  void remove(Product product) {
    int index = items.indexWhere((i) => i.product.id == product.id);

    if (index == -1) {
      return;
    }

    final removedItem = items[index].remove();

    if (removedItem.quantity == 0){
      items.removeAt(index);
    } else {
      items[index] = removedItem;
    }

    notifyListeners();
  }
}
