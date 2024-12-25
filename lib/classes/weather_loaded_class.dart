import 'dart:ui';

import 'package:flutter/material.dart';

class WeatherLoadedClass {
  String city_name;
  String weather_condition;
  String image_id;
  String temp;
  String min_temp;
  String max_temp;
  String humidity;
  String feels_like;
  WeatherLoadedClass(
      {required this.city_name,
      required this.weather_condition,
      required this.image_id,
      required this.temp,
      required this.min_temp,
      required this.max_temp,
      required this.humidity,
      required this.feels_like});

  String get_image(image_id) {
    if (image_id == "clear-day" || image_id == "clear-night") {
      return "images/clear.png";
    } else if (image_id == "partly-cloudy-night" ||
        image_id == "partly-cloudy-day" ||
        image_id == "cloudy" ||
        image_id == "wind") {
      return "images/cloudy.png";
    } else if (image_id == "fog") {
      return "images/fog.png";
    } else if (image_id == "showers-night" ||
        image_id == "showers-day" ||
        image_id == "rain") {
      return "images/rain.png";
    } else if (image_id == "thunder-showers-night" ||
        image_id == "thunder-showers-day" ||
        image_id == "thunder-rain") {
      return "images/thunder.png";
    } else if (image_id == "snow-showers-night" ||
        image_id == "snow-showers-day" ||
        image_id == "snow") {
      return "images/snow.png";
    } else {
      return "images/no_image.png";
    }
  }


  MaterialColor get_theme() {
    if (image_id == "clear-day" || image_id == "clear-night") {
      return Colors.orange;
    } else if (image_id == "partly-cloudy-night" ||
        image_id == "partly-cloudy-day" ||
        image_id == "cloudy" ||
        image_id == "wind") {
      return Colors.grey;
    } else if (image_id == "fog") {
      return Colors.blueGrey;
    } else if (image_id == "showers-night" ||
        image_id == "showers-day" ||
        image_id == "rain") {
      return Colors.blue;
    } else if (image_id == "thunder-showers-night" ||
        image_id == "thunder-showers-day" ||
        image_id == "thunder-rain") {
      return Colors.amber;
    } else if (image_id == "snow-showers-night" ||
        image_id == "snow-showers-day" ||
        image_id == "snow") {
      return Colors.pink;
    } else {
      return Colors.green;
    }
  }

  factory WeatherLoadedClass.fromjson(var json) {
    return WeatherLoadedClass(
      city_name: json["address"],
      weather_condition: json["days"][0]["conditions"],
      image_id: json["days"][0]["icon"],
      temp: ((json["days"][0]["temp"] - 32) * 5 / 9).round().toString(),
      min_temp: ((json["days"][0]["tempmin"] - 32) * 5 / 9 ).round().toString(),
      max_temp: ((json["days"][0]["tempmax"] - 32) * 5 / 9 ).round().toString(),
      humidity: ((json["days"][0]["humidity"] - 32 ) * 5 / 9 ).round().toString(),
      feels_like: ((json["days"][0]["feelslike"] - 32 ) * 5 / 9 ).round().toString(),
    );
  }
}
