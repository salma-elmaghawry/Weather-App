import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather/Services/weather_Service.dart';
import 'package:weather/models/weather_model.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search for the City'),
        //centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Color(0xff62a1c7),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/cloudy.png',
                width: 150,
                height: 150,
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                  onSubmitted: (value) async {
                    WeatherModel weatherModel = await WeatherService(Dio())
                        .getCurrentWeather(cityName: value);
                    Navigator.pop(context);
                    log(weatherModel.cityName);
                  },
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    labelText: 'Search',
                    suffixIcon: Icon(Icons.search),
                    //suffixIconColor: Colors.amber,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    hintText: 'Enter City Name',
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

WeatherModel? weatherModel;

