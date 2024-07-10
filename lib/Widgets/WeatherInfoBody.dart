import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather/main.dart';
import 'package:weather/models/weather_model.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key, required this.weatherModel});
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    // Use BlocBuilder to reactively rebuild based on the state
    return BlocBuilder<GetWeatherCubit, WeatherState>(
      builder: (context, state) {
        if (state is WeatherInitialState) {
          // Show a loading spinner while fetching weather data
          return Center(child: CircularProgressIndicator());
        } else if (state is WeatherLoadedState) {
          WeatherModel weatherModel = state.weatherModel;

          return Container(
            decoration: BoxDecoration(
              
              gradient:LinearGradient(
            
              begin: Alignment.topLeft,end: Alignment.bottomRight,
              colors: [
                getThemeColor(weatherModel.weatherCondition),
                getThemeColor(weatherModel.weatherCondition)[300]!,
                getThemeColor(weatherModel.weatherCondition)[50]!


                  
                ],  
              //colors: [Color(0xff62a1c7),Color(0xffFFBF78)],
              )
              ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    weatherModel.cityName,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 35),
                  ),
                  Text(
                    'Updated at ${weatherModel.date.hour.toString().padLeft(2, '0')}:${weatherModel.date.minute.toString().padLeft(2, '0')}',
                    style: const TextStyle(fontSize: 15),
                  ),
                  const SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.network("https:${weatherModel.image}"),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 11.0, horizontal: 40.0),
                          decoration: BoxDecoration(
                        border: Border.all(color: Color.fromARGB(255, 218, 209, 209), width: 2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                        child: Text(
                          '${weatherModel.temp.toString()} °C',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 35),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            'Max: ${weatherModel.maxTemp.round()}°C',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Text(
                            'Min: ${weatherModel.minTemp.round()}°C',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Text(
                    weatherModel.weatherCondition.toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ],
              ),
            ),
          );
        } else if (state is WeatherFaliureState) {
          // Display an error message if there's an error fetching weather data
          return Center(child: Text('Error: ${state.errorMessage}'));
        } else {
          // Display a default message when no data is available
          return const  Center(
              child: Text('Enter a valid city name to get weather information.'));
        }
      },
    );
  }
}
