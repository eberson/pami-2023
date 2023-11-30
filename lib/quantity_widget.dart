import 'dart:math';

import 'package:flutter/material.dart';

const double _size = 40;

class QuantityWidget extends StatefulWidget {
  final int startQuantity;
  final int maxQuantity;
  final VoidCallback onAdd;
  final VoidCallback onRemove;

  const QuantityWidget({
    super.key,
    this.startQuantity = 0,
    required this.maxQuantity,
    required this.onAdd,
    required this.onRemove,
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
        button(remove, Icons.remove),
        text(),
        button(add, Icons.add),
      ],
    );
  }

  void add() {
    //setState é necessário para atualizar o estado do componente
    //e causar uma atualizacao na tela
    setState(() {
      quantity = min(quantity + 1, widget.maxQuantity);
      widget.onAdd();
    });
  }

  void remove() {
    setState(() {
      quantity = max(quantity - 1, 0);
      widget.onRemove();
    });
  }

  Widget button(VoidCallback onPressed, IconData icon) {
    final style = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0)      
      ),
      padding: EdgeInsets.zero,
    );

    return SizedBox(
      width: _size,
      height: _size,
      child: ElevatedButton(
        onPressed: onPressed,
        style: style,
        child: Icon(icon),
      ),
    );
  }

  Widget text() => SizedBox(
    width: _size * 1.5,
    height: _size,
    child: Center(
      child: Text(
        "$quantity",
        style: const TextStyle(
          fontSize: 20
        ),
      ),
    ),
  );
}
