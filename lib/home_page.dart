import 'package:flutter/material.dart';
import 'package:weather/weather_response.dart';
import 'package:weather/weather_service.dart';
import 'package:weather/weather_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late Future<WeatherResponse> weatherResponseFuture;

  @override
  void initState() {
    super.initState();

    weatherResponseFuture = WeatherService.current();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FutureBuilder<WeatherResponse>(
              future: weatherResponseFuture,
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Text("${snapshot.error!}");
                }

                if (snapshot.hasData) {
                  final weatherResponse = snapshot.data!;
                  return WeatherWidget(weatherResponse: weatherResponse);
                }

                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
            ElevatedButton(
              onPressed: (){}, 
              child: const Text("Atualizar")
            ),
          ],
        ),
      ),
    );
  }
}