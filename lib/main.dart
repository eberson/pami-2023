import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final produtoController = TextEditingController();
  final quantidadeController = TextEditingController();
  final precoController = TextEditingController();

  final formatador = NumberFormat.currency(
    locale: "pt_BR",
    symbol: "R\$",
  );

  var total = 0.0;

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
              newTextField(produtoController, "Produto"),
              newTextField(quantidadeController, "Quantidade"),
              newTextField(precoController, "Preço"),
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
                  Text(formatador.format(total)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget newTextField(TextEditingController controller, String text) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: text,
      ),
    );
  }

  void calcular() {
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
        primarySwatch: Colors.lightGreen,
      ),
      home: const HomePage(),
    );
  }
}

void main() => runApp(const Aplicacao());
