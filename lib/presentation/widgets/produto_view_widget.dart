import 'package:flutter/material.dart';
import 'package:quitanda/domain/produto.dart';
import 'package:quitanda/presentation/widgets/labeled_widget.dart';

class ProdutoViewWidget extends StatelessWidget {
  final Produto produto;

  const ProdutoViewWidget({super.key, required this.produto});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      height: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              produto.nome,
              style: theme.textTheme.headline4,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              LabeledWidget(
                label: "Estoque",
                text: produto.estoque.toString(),
              ),
              LabeledWidget(
                label: "Preço de Compra",
                text: produto.precoCompra.toString(),
              ),
              LabeledWidget(
                label: "Preço de Venda",
                text: produto.precoVenda.toString(),
              )
            ],
          ),
        ],
      ),
    );
  }
}
