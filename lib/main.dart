import 'package:diacritic/diacritic.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final nomeController = TextEditingController();
  final periodoController = TextEditingController();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomField(controller: nomeController, label: "Nome"),
            CustomField(controller: periodoController, label: "Período"),
            SizedBox(
              width: double.maxFinite,
              height: 50,
              child: ElevatedButton(
                onPressed: () => cumprimente(context),
                child: const Text("Cumprimente"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void cumprimente(BuildContext context) {
    final message = "${getCumprimento()}, ${nomeController.text}!";

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  String getCumprimento() {
    switch(removeDiacritics(periodoController.text.toLowerCase())) {
      case "manha": return "Bom dia";
      case "tarde": return "Boa tarde";
      case "noite": return "Boa noite";
      default: return "Olá";
    }
  }
}

class CustomField extends StatelessWidget {
  final TextEditingController controller;
  final String label;

  const CustomField({
    super.key,
    required this.controller,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
      ),
    );
  }
}

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cumprimento",
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

void main() => runApp(const Aplicacao());
