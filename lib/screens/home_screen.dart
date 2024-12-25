import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/screens/search_screen.dart';
import 'package:weather_app/screens/weather_failure_screen.dart';
import 'package:weather_app/screens/weather_loaded_screen.dart';

import '../cubits/get_weather_cubit.dart';
import '../states/get_weather_states.dart';
import 'initial_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetWeatherCubit, GetWeatherState>(builder: (context , state){
      if (state is initialState){
        return InitialScreen();
      }
      else if (state is WeatherLoaded){
        return WeatherLoadedScreen(details: state.details );
      }
      else {
        return WeatherFailureScreen();
      }
    });
  }
}





