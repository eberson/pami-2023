import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("Teste seus conhecimentos"),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, "/question");
              }, 
              child: const Text("Começar"),
            ),
          ],
        ),
      ),
    );
  }
}