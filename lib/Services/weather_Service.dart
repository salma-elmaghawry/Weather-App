import 'package:dio/dio.dart';
import 'package:weather/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  WeatherService(this.dio);
  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    Response response = await dio.get(
        'https://api.weatherapi.com/v1/forecast.json?key=b2a3f13c46dc45f5adc84756242805&q=$cityName&days=1');
    WeatherModel weathermodel = WeatherModel.fromJson(response.data);
    return weathermodel;
  }
}
