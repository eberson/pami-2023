import 'package:flutter/material.dart';
import 'package:loja/cart_view_model.dart';
import 'package:loja/catalog_view_model.dart';
import 'package:loja/quantity_widget.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    //recuperamos o id do produto que nos foi passado da outra tela
    final id = ModalRoute.of(context)!.settings.arguments as String;

    //recuperamos o view model (catalogo) do Provider
    final catalog = Provider.of<CatalogViewModel>(context);

    final cart = Provider.of<CartViewModel>(context);

    //consultamos, na lista de produtos do catalogo, pelo produto
    //com o id que recebemos por parametro
    final product = catalog.products.firstWhere((p) => p.id == id);

    final quantity = cart.get(product.id)?.quantity ?? 0;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalhe do Produto"),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            info("Nome", product.name),
            info("Preço", product.salePriceFormatted),
            info("Estoque", "${product.quantity}"),
            QuantityWidget(
              startQuantity: quantity,
              maxQuantity: product.quantity,
              onAdd: () => cart.add(product),
              onRemove: () => cart.remove(product),
            ),
          ],
        ),
      ),
    );
  }

  Widget info(String label, String info) => Row(
        children: [
          SizedBox(
            width: 100,
            child: Text(label),
          ),
          Text(info),
        ],
      );
}
