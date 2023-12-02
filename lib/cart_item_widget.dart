import 'package:flutter/material.dart';
import 'package:loja/cart_item.dart';
import 'package:loja/cart_view_model.dart';
import 'package:provider/provider.dart';

class CartItemWidget extends StatelessWidget {
  final CartItem item;

  const CartItemWidget({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartViewModel>(context);
    final theme = Theme.of(context);

    return Card(
      elevation: 5,
      margin: const EdgeInsets.only(top: 4, bottom: 4),
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Text(
              item.product.name,
              style: theme.textTheme.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}
