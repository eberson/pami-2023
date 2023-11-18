class CurrentWeather {
  final double celsiusTemperature;
  final double fahrenheitTemperature;
  final double celsiuFeelsLike;
  final double fahrenheitFeelsLike;
  final bool isDay;
  final double humidity;

  CurrentWeather({
    required this.celsiusTemperature,
    required this.celsiuFeelsLike,
    required this.fahrenheitTemperature,
    required this.fahrenheitFeelsLike,
    required this.isDay,
    required this.humidity,
  });

  factory CurrentWeather.fromJson(Map<String, dynamic> json) {
    return CurrentWeather(
      celsiusTemperature: json["temp_c"],
      celsiuFeelsLike: json["feelslike_c"],
      fahrenheitTemperature: json["temp_f"],
      fahrenheitFeelsLike: json["feelslike_f"],
      isDay: json["is_day"] as int == 1,
      humidity: json["humidity"],
    );
  }

}