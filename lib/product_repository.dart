//classes do tipo repository são responsáveis por se 
// conectarem com a fonte de dados, ex: banco de dados, api, arquivo, etc

import 'package:loja/product.dart';
import 'package:uuid/uuid.dart';

const _uuid = Uuid();

class ProductRepository {
  static List<Product> list() {
    return <Product>[
      Product(id: _uuid.v4(), name: "Banana", price: 2.89, profit: 10, quantity: 50),
      Product(id: _uuid.v4(), name: "Abacate", price: 3.89, profit: 20, quantity: 50),
      Product(id: _uuid.v4(), name: "Laranja", price: 4.50, profit: 15, quantity: 50),
      Product(id: _uuid.v4(), name: "Abacaxi", price: 5.50, profit: 25, quantity: 50),
      Product(id: _uuid.v4(), name: "Tomate", price: 9.50, profit: 45, quantity: 50),
    ];
  }
}