import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit.dart';
import 'package:weather_app/screens/home_screen.dart';
import 'package:weather_app/states/get_weather_states.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(initialState()),
      child: Builder(
        builder: (context) {
          return BlocBuilder<GetWeatherCubit, GetWeatherState>(
            builder: (context, state) {
              return MaterialApp(
                theme: ThemeData(

                    colorScheme: ColorScheme.fromSeed(
                  seedColor: BlocProvider.of<GetWeatherCubit>(context)
                          .details
                          ?.get_theme() ??
                      Colors.red,
                )),
                debugShowCheckedModeBanner: false,
                home: HomeScreen(),
              );
            },
          );
        },
      ),
    );
  }
}

//
