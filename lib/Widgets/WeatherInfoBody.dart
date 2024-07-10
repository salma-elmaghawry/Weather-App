import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather/models/weather_model.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});

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

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  weatherModel.cityName,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Text(
                  'Updated at ${weatherModel.date.hour}:${weatherModel.date.minute}',
                  style: const TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.network("https:${weatherModel.image}"),
                    Text(
                      weatherModel.temp.toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Column(
                      children: [
                        Text(
                          'Maxtemp: ${weatherModel.maxTemp.round()}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Text(
                          'Mintemp: ${weatherModel.minTemp.round()}',
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
          );
        } else if (state is WeatherFaliureState) {
          // Display an error message if there's an error fetching weather data
          return Center(child: Text('Error: ${state.errorMessage}'));
        } else {
          // Display a default message when no data is available
          return Center(child: Text('Enter a city name to get weather information.'));
        }
      },
    );
  }
}
