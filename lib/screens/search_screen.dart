import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/classes/weather_loaded_class.dart';
import 'package:weather_app/cubits/get_weather_cubit.dart';
import 'package:weather_app/screens/home_screen.dart';
import 'package:weather_app/services/get_weather.dart';
import 'package:weather_app/screens/weather_loaded_screen.dart';
import 'package:weather_app/states/get_weather_states.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search For Your Location "),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextField(
            onSubmitted: (value) async {
              var get_weather_cubit = BlocProvider.of<GetWeatherCubit>(context);
              await get_weather_cubit.get_weather(value);
              Navigator.pop(context);
            },
            decoration: InputDecoration(
              label: const Text("Your location"),
              hintText: "ex : london",
              hintStyle: const TextStyle(fontWeight: FontWeight.w400),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ),
        ),
      ),
    );
  }
}
