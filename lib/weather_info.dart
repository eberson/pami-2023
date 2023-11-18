import 'package:flutter/material.dart';

class WeatherInfo extends StatelessWidget {
  final String description;
  final double value;

  const WeatherInfo({
    super.key,
    required this.description,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      width: 150,
      height: 150,
      child: Card(
        elevation: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ListTile(
              title: Text(
                description,
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              "$value",
              style: theme.textTheme.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}
