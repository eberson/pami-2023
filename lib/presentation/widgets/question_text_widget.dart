import 'package:flutter/material.dart';

class QuestionTextWidget extends StatelessWidget {
  final String text;

  const QuestionTextWidget({
    super.key,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(text),
      ),
    );
  }
}