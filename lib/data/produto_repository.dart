import 'package:quitanda/domain/produto.dart';

List<Produto> load(){
  return <Produto>[
    Produto(
      estoque: 10,
      precoCompra: 1.50,
      precoVenda: 2.00,
      nome: "Banana"
    ),
    Produto(
      nome: "Abacate",
      estoque: 20,
      precoCompra: 2.00,
      precoVenda: 3.00      
    ),
    Produto(
      nome: "Abacaxi",
      estoque: 10,
      precoCompra: 3.00,
      precoVenda: 7.00      
    ),
    Produto(
      nome: "Ameixa",
      estoque: 5,
      precoCompra: 3.00,
      precoVenda: 4.50      
    ),
    Produto(
      nome: "Tomate",
      estoque: 45,
      precoCompra: 5.00,
      precoVenda: 8.50      
    )
  ];
}