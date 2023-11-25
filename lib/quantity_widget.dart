import 'package:flutter/material.dart';

class QuantityWidget extends StatefulWidget {
  final int startQuantity;

  const QuantityWidget({
    super.key,
    this.startQuantity = 0,
  });

  @override
  State<QuantityWidget> createState() => _QuantityWidgetState();
}

class _QuantityWidgetState extends State<QuantityWidget> {
  late int quantity;

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
        button(() { }, Icons.remove),
        Text("$quantity"),
        button(() { }, Icons.add),
      ],
    );
  }

  Widget button(VoidCallback onPressed, IconData icon) => SizedBox(
    width: 36,
    height: 36,    
    child: ElevatedButton(
      onPressed: onPressed,
      child: Icon(icon),      
    ),
  );
}
