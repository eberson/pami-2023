import 'package:weather/current_weather.dart';
import 'package:weather/location.dart';

class WeatherResponse {
  final Location location;
  final CurrentWeather weather;

  WeatherResponse({
    required this.location,
    required this.weather,
  });

  factory WeatherResponse.fromJson(Map<String, dynamic> json) {
    return WeatherResponse(
      location: Location.fromJson(json["location"]), 
      weather: CurrentWeather.fromJson(json["current"]),
    );
  }
}