import 'package:flutter/material.dart';
import 'package:weather/Widgets/NoWeatherBody.dart';
import 'package:weather/Widgets/WeatherInfoBody.dart';
import 'package:weather/pages/SearchView.dart';

class homeView extends StatelessWidget {
  const homeView({super.key});

  @override
  Widget build(BuildContext context) {
    //weatherModel.cityName;
    return Scaffold(
      appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return SearchView();
                      },
                    ),
                  );
                },
                icon: Icon(Icons.search_rounded))
          ],
          title: Text('Climate Connect'),
          centerTitle: true,
          titleTextStyle: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          backgroundColor: Color(0xff62a1c7)),
      body: 
          const WeatherInfoBody(),
    );
  }
}
