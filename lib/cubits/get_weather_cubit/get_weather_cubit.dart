import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/Services/weather_Service.dart';
import 'package:weather/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather/models/weather_model.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit():super(WeatherInitialState());
  getWeather({required String cityName}) async {
    try {
      WeatherModel weatherModel =
          await WeatherService(Dio()).getCurrentWeather(cityName: cityName);
      emit(WeatherLoadedState(weatherModel));
    } on Exception catch (e) {
      emit(WeatherFaliureState());
      
    }
  }
}
