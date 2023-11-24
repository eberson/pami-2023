import 'package:flutter/material.dart';
import 'package:loja/catalog_item_widget.dart';
import 'package:loja/catalog_view_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<CatalogViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.shopping_cart)
          ),
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.only(top: 10),
        itemCount: vm.products.length,
        itemBuilder: (context, index) => CatalogItemWidget(
          product: vm.products[index],
        ), 
        separatorBuilder: (context, index) => const Divider(), 
      ),
    );
  }
}