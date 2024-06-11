class WeatherModel {
  final String cityName;
  final String date;
  final String? image;
  final String? temp;
  final String maxTemp;
  final String minTemp;
  final String? weatherTemp;

  WeatherModel(
      {required this.cityName,
      required this.date,
      required this.image,
      required this.temp,
      required this.maxTemp,
      required this.minTemp,
      required this.weatherTemp});
}
