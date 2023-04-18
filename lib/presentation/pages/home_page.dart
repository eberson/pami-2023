import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home - Cardápio'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => const Text('Item'), 
        itemCount: 10,

        separatorBuilder: (context, index) => const Divider(), 
      ),
    );
  }
}