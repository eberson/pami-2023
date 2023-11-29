import 'package:flutter/material.dart';
import 'package:loja/cart_item.dart';

class CartItemWidget extends StatelessWidget {
  final CartItem item;

  const CartItemWidget({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        margin: const EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(4),
              child: Text(item.product.name),
            ),
            Container(
              padding: const EdgeInsets.all(4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Quantidade: ${item.quantity}"),
                  Text("Preço Unitário: ${item.priceFormatted}"),
                  Text("Total: ${item.totalFormatted}"),                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
