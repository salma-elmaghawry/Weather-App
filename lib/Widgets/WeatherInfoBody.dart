import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cubits/get_weather_cubit/get_weather_cubit.dart';


class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    var weatherModel= BlocProvider.of<GetWeatherCubit>(context).weatherModel;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            weatherModel.cityName,
            style:const TextStyle(
              fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
          const Text(
            'Upadated at 12:00 PM',
            style: TextStyle(fontSize: 15),
          ),
          const SizedBox(
            height: 10,
          ),
    
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  "https:${weatherModel.image}"),
          
                    Text(
                  weatherModel.temp.toString(),
                  style:const TextStyle(
                    fontWeight: FontWeight.bold, 
                    fontSize: 20),
                ),
                Column(
                  children: [
                        Text(
                          'Maxtemp: ${weatherModel.maxTemp.round()}'
                        ,
                        style:const  TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                          Text(
                            'Mintemp: ${weatherModel.minTemp.round()}'
                      ,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    
                  ],
                ),
              ],
            
          ),
          const SizedBox(
            height: 40,
          ),
            Text(
            weatherModel.weatherCondition.toString(),
            style:const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ],
      ),
    );
  }
}
