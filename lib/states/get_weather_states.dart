

class GetWeatherState {}

class initialState extends GetWeatherState {}

class WeatherLoaded extends GetWeatherState{
  WeatherLoaded( {required this.details});
  var details ;
}

class WeatherFailure extends GetWeatherState{}