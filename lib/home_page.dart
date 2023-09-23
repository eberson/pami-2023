import 'package:flutter/material.dart';
import 'package:flutter_shake_animated/flutter_shake_animated.dart';
import 'package:lista/language.dart';
import 'package:lista/list_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final languages = [
    Language(name: "C", like: false),
    Language(name: "C#", like: false),
    Language(name: "C++", like: false),
    Language(name: "Java", like: false),
    Language(name: "Python", like: false),
    Language(name: "Javascript", like: false),
    Language(name: "HTML", like: false),
    Language(name: "SQL", like: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: ListView.separated(
        itemCount: languages.length,
        itemBuilder: (context, index) => createItem(languages[index], index),
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }

  Widget createItem(Language language, int index) {
    return ListItemView(
      index: index,
      language: language,
      onClick: doLike,
    );
  }

  void doLike(Language language, int index) {
    setState(() {
      languages[index] = Language(
        name: language.name, 
        like: !language.like,
      );
    });
  }
}
