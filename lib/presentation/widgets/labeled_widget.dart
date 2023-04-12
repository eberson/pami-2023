import 'package:flutter/material.dart';

class LabeledWidget extends StatelessWidget {
  final String label;
  final String text;

  const LabeledWidget({
    super.key,
    required this.label,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var style = theme.textTheme.bodySmall;

    return Row(
      children: [
        Text(label, style: style),
        Text(": ", style: style),
        Text(text, style: style),
      ],
    );
  }
}