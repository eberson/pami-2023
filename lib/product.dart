//esta classe representa um produto do nosso banco de dados

import 'package:loja/util.dart';

class Product {
  final String id;
  final String name;
  final double price;
  final double profit;
  final int quantity;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.profit,
    required this.quantity,
  });

  double get salePrice => price * (1 + profit / 100);

  String get salePriceFormatted => formatCurrency(salePrice);
  
}