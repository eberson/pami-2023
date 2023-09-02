import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final produtoController = TextEditingController();
  final precoController = TextEditingController();
  final quantidadeController = TextEditingController();

  final formatter = NumberFormat.currency(
    locale: "pt_BR",
    symbol: "R\$",
  );

  late var total = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              newTextField(
                produtoController,
                "Produto",
                TextInputType.text,
              ),
              newTextField(
                quantidadeController,
                "Quantidade",
                TextInputType.number,
              ),
              newTextField(
                precoController,
                "Preço",
                TextInputType.number,
              ),
              SizedBox(
                width: double.maxFinite,
                height: 50,
                child: ElevatedButton(
                  onPressed: calcular,
                  child: const Text("Calcular"),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text("Total: "),
                  ),
                  Text(formatter.format(total)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget newTextField(TextEditingController controller, String text, TextInputType inputType) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: text,
      ),
      keyboardType: inputType,
    );
  }

  void calcular(){
    final quantidade = int.parse(quantidadeController.text);
    final preco = double.parse(precoController.text);

    setState(() {
      total = quantidade * preco;
    });
  }
}

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Pedido",
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const HomePage(),
    );
  }
}

void main() => runApp(const Aplicacao());
