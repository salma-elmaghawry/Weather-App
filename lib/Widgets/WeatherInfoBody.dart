import 'package:flutter/material.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Alexandria',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          const Text(
            'Upadated at 12:00 PM',
            style: TextStyle(fontSize: 15),
          ),
          
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/cloudy.png'),
                Container(
                    child: const Text(
                  '20',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )),
                Column(
                  children: [
                    Container(
                      child: const Text(
                        'MinTemp:13',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    Container(
                  child: const Text(
                    'MaxTemp:26',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                  ],
                ),
                
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'light rain',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ],
      ),
    ));
  }
}
