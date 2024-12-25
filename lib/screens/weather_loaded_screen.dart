import 'package:flutter/material.dart';
import 'package:weather_app/classes/weather_loaded_class.dart';
import 'package:weather_app/screens/search_screen.dart';

import '../components/weather_loaded_component.dart';

class WeatherLoadedScreen extends StatelessWidget {
  WeatherLoadedScreen({super.key, required this.details});
  WeatherLoadedClass details;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather App"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SearchScreen();
                    },
                  ),
                );
              },
              icon: Icon(Icons.search))
        ],
      ),
      body:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          details.city_name,
          style: const TextStyle(
            fontSize: 50,
          ),
        ),
        Text(details.weather_condition),
        const SizedBox(
          height: 50,
        ),
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(details.get_image(details.image_id))),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Text(
          details.temp,
          style: const TextStyle(fontSize: 50),
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          children: [
            WeatherLoadedComponent(
                data_type: "Max Temp", data: details.min_temp),
            WeatherLoadedComponent(
                data_type: "Min Temp", data: details.max_temp),
          ],
        ),
        Row(
          children: [
            WeatherLoadedComponent(
                data_type: "Humidity", data: "${details.humidity}%"),
            WeatherLoadedComponent(
                data_type: "Feels Like", data: details.feels_like),
          ],
        )
      ]),
    );
  }
}
