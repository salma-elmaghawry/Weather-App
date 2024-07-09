import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather/pages/homeView.dart';
import 'dart:ui';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: getThemeColor(),
        ),
        home: homeView(),
      ),
    );
  }
}

MaterialColor getThemeColor(String condition) {
  if (condition == 'Sunny' ||
      condition == 'Clear' ||
      condition == 'partly cloudy') {
    return Colors.orange;
  } else if (condition == 'Blizzard' ||
      condition == 'Patchy snow possible' ||
      condition == 'Patchy sleet possible' ||
      condition == 'Patchy freezing drizzle possible' ||
      condition == 'Blowing snow') {
    return Colors.blue;
  } else if (condition == 'Freezing fog' ||
      condition == 'Fog' ||
      condition == 'Heavy Cloud' ||
      condition == 'Mist' ||
      condition == 'Fog') {
    return Colors.blueGrey;
  } else if (condition == 'Patchy rain possible' ||
      condition == 'Heavy Rain' ||
      condition == 'Showers	') {
    return Colors.blue;
  } else if (condition == 'Thundery outbreaks possible' ||
      condition == 'Moderate or heavy snow with thunder' ||
      condition == 'Patchy light snow with thunder' ||
      condition == 'Moderate or heavy rain with thunder' ||
      condition == 'Patchy light rain with thunder') {
    return Colors.deepPurple;
  } else {
    return Colors.orange;
  }
}
