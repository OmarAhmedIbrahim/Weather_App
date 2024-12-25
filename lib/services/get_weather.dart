import 'package:dio/dio.dart';

class get_weather_service {
  final dio = Dio();

  Future<dynamic> get_weather(String city_name) async {
    final response = await dio.get('https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/$city_name?key=LTLXKH965WH74FZB9J376QP7B');
    var json = response.data;
    return json ;
  }
}






// api key = LTLXKH965WH74FZB9J376QP7B