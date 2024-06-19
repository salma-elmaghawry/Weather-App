import 'package:dio/dio.dart';
import 'package:weather/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String baseURL = 'https://api.weatherapi.com/v1';
  final String ApiKey = 'b2a3f13c46dc45f5adc84756242805';
  WeatherService(this.dio);
  Future<WeatherModel?> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio
          .get('$baseURL/forecast.json?key=$ApiKey&q=$cityName&days=1');
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
    }on DioException catch (e) {
      return null;
    }
  }
}
