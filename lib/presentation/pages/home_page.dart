import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => const Text('Item'), 
        itemCount: 0,

        separatorBuilder: (context, index) => const Divider(), 
      ),
    );
  }
}