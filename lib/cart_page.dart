import 'package:flutter/material.dart';
import 'package:loja/cart_item_widget.dart';
import 'package:loja/cart_view_model.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Carrinho"),
      ),
      body: ListView.builder(
        itemCount: cart.items.length,
        itemBuilder: (context, index) => CartItemWidget(
          item: cart.items[index],
        ),
      ),
    );
  }
}