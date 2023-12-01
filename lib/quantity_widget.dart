import 'dart:math';

import 'package:flutter/material.dart';

class QuantityWidget extends StatefulWidget {
  final int startQuantity;
  final int maxQuantity;

  const QuantityWidget({
    super.key,
    required this.startQuantity,
    required this.maxQuantity,
  });

  @override
  State<QuantityWidget> createState() => _QuantityWidgetState();
}

class _QuantityWidgetState extends State<QuantityWidget> {
  late int quantity;

  final buttonStyle = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
    ),
    padding: EdgeInsets.zero,
  );

  @override
  void initState() {
    super.initState();

    quantity = widget.startQuantity;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        subButton(),
        Text("$quantity"),
        addButton(),
      ],
    );
  }

  Widget subButton() {
    return button(Icons.remove, () {
      setState(() {
        quantity = max(quantity - 1, 0);
      });
    });
  }

  Widget addButton() {
    return button(Icons.add, () {
      setState(() {
        quantity = min(quantity + 1, widget.maxQuantity);
      });
    });
  }

  Widget button(IconData icon, VoidCallback action) {
    return SizedBox(
      width: 36,
      height: 36,
      child: ElevatedButton(
        onPressed: action,
        style: buttonStyle,
        child: Icon(icon),
      ),
    );
  }
}
