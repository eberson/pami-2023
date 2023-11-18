import 'package:flutter/material.dart';
import 'package:weather/day_info.dart';
import 'package:weather/weather_info.dart';
import 'package:weather/weather_response.dart';

class WeatherWidget extends StatelessWidget {
  final WeatherResponse weatherResponse;

  const WeatherWidget({
    super.key,
    required this.weatherResponse,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final current = weatherResponse.weather;

    return Container(
      padding: const EdgeInsets.all(8),
      child: Wrap(
        spacing: 8,
        runSpacing: 8,        
        children: [
          DayInfo(isDay: current.isDay),
          WeatherInfo(description: "Temperatura Celsius", value: current.celsiusTemperature),
          WeatherInfo(description: "Temperatura Fahrenheit", value: current.fahrenheitTemperature),
          WeatherInfo(description: "Sensação Térmica Celsius", value: current.celsiuFeelsLike),
          WeatherInfo(description: "Sensação Térmica Fahrenheit", value: current.fahrenheitFeelsLike),
          WeatherInfo(description: "Umidade", value: current.humidity),          
        ],
      ),
    );
  }
}