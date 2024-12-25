import 'package:flutter/material.dart';

class WeatherLoadedComponent extends StatelessWidget {
  WeatherLoadedComponent(
      {super.key, required this.data_type, required this.data});
  String data;
  String data_type;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 20,
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              // color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  data_type,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text(
                  data,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
