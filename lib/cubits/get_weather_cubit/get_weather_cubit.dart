import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/Services/weather_Service.dart';
import 'package:weather/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather/models/weather_model.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit(super.initialState);
  getWeather({required String cityName}) async {
    WeatherModel weatherModel =
        await WeatherService(Dio()).getCurrentWeather(cityName: cityName);
  }
}