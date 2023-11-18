import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:weather/weather_response.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class WeatherService {

  static Future<WeatherResponse> current() async {
    final uri = Uri.https(
      "api.weatherapi.com", 
      "/v1/current.json",
      {
        "key": dotenv.env["key"],
        "q": "Tokyo",
        "aqi": "no",
      }      
    );

    final response = await http.get(uri);

    if (response.statusCode != 200) {
      throw Exception("Não foi possível consultar informações sobre o clima");
    }

    var json = convert.jsonDecode(response.body) as Map<String, dynamic>;
    return WeatherResponse.fromJson(json);
  }
}