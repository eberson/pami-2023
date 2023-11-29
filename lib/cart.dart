import 'package:flutter/foundation.dart';
import 'package:loja/cart_item.dart';
import 'package:loja/product.dart';

class CartViewModel extends ChangeNotifier {
  final List<CartItem> items = [];

  bool isInCart(Product product) {
    return items.where((i) => i.product.id == product.id).isNotEmpty;    
  }

  void addToCart(Product product) {
    //recupera a posicao do array onde se encontra o produto cujo id 
    //é igual ao id do produto recebido por parametro
    final index = items.indexWhere((i) => i.product.id == product.id);

    //o index será diferente -1 se o produto já existir 
    //na lista de itens do carrinho
    if (index != -1) {
      //se ja existe, aumenta a quantidade
      items[index] = items[index].add();
    } else {
      //se nao existe adiciona o produto no carrinho com quantidade 1
      items.add(CartItem(
        product: product,
        price: product.salePrice,
        quantity: 1,
      ));
    }

    //avisa a todos os interessados sobre a mudanca
    notifyListeners();
  }

  void removeFromCart(Product product) {
    //recupera a posicao do array onde se encontra o produto cujo id 
    //é igual ao id do produto recebido por parametro
    final index = items.indexWhere((i) => i.product.id == product.id);

    //se o index for -1 (nao existe na lista), entao encerra sem fazer nada
    if (index == -1) {
      return;
    }

    //recupera o item do carrinho
    var item = items[index];

    //remove um da quantidade do item
    var itemAfterRemove = item.sub();

    //se a quantidade atingiu 0, remove o item do carrinho
    if (item.quantity == 0) {
      items.removeAt(index);
    } else {
      //senao atualiza o carrinho
      items[index] = itemAfterRemove;
    }

    //avisa a todos os interessados sobre a mudanca
    notifyListeners();
  }

  double get total => items.map((i) => i.total)
                           .reduce((value, element) => value + element); 

}