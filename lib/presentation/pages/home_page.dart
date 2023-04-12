import 'package:flutter/material.dart';
import 'package:quitanda/data/produto_repository.dart';
import 'package:quitanda/presentation/widgets/produto_view_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final produtos = load();
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: produtos.length,
              itemBuilder: (context, index) => ProdutoViewWidget(produto: produtos[index]),
              separatorBuilder: (context, index) => const Divider(),
            ),
          ),
        ],
      ),
    );
  }
}

