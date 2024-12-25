

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/states/get_weather_states.dart';

import '../classes/weather_loaded_class.dart';
import '../services/get_weather.dart';

class GetWeatherCubit extends Cubit <GetWeatherState>{
  GetWeatherCubit(super.initialState);
   WeatherLoadedClass? details ;
   dynamic get_weather(value) async{
    try {
      var json = await get_weather_service().get_weather(value);
      details = WeatherLoadedClass.fromjson(json);
      emit(WeatherLoaded(details : details));
    } catch (e) {
      emit(WeatherFailure());
    }
  }

}