import 'package:flutter/material.dart';

class DayInfo extends StatelessWidget {
  final bool isDay;

  const DayInfo({
    super.key,
    required this.isDay,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 150,
      child: Card(
        elevation: 10,
        child: Icon(
          isDay ? Icons.sunny : Icons.nightlight,
          size: 90,
          color: isDay ? Colors.yellow : Colors.black38,
        ),
      ),
    );
  }
}
