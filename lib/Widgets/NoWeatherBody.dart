import 'package:flutter/material.dart';
import 'package:weather/Widgets/WeatherInfoBody.dart';
import 'package:weather/pages/SearchView.dart';
import 'package:weather/pages/homeView.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    //اعمل ui اللى يعرضلى ان مفيش ويزر ممكن تعمل سيرش
    return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/cloudy.png',
              width: 150,
              height: 150,
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return SearchView();
                  }));
              },
              child: Text('Start Search Now', style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold)),
              style: ElevatedButton.styleFrom(
                primary:Color(0xff62a1c7),
                minimumSize: Size(150, 50), // Set the button size
              ),
            ),
          ],
        ),
      );
  }
}
