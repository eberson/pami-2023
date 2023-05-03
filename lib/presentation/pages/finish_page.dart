import 'package:flutter/material.dart';

class FinishPage extends StatelessWidget {
  const FinishPage({super.key});

  @override
  Widget build(BuildContext context) {
    final message = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Finish"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(message),
            ElevatedButton(
              onPressed: (){
                Navigator.popUntil(context, (route) => route.settings.name == "/");
              }, 
              child: const Text("Voltar ao início")
            ),
          ],
        ),
      ),
    );
  }
}


//https://docs.flutter.dev/cookbook/navigation/navigate-with-arguments