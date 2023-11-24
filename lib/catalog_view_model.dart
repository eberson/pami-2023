import 'package:flutter/foundation.dart';
import 'package:loja/product.dart';
import 'package:loja/product_repository.dart';

class CatalogViewModel extends ChangeNotifier {
  late List<Product> products;

  CatalogViewModel() {
    products = ProductRepository.list();
  }
}