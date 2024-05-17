import 'package:flutter/material.dart';
import 'package:weather/Widgets/NoWeatherBody.dart';

class homeView extends StatelessWidget {
  const homeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search_rounded))
        ],
        title: Text('Weather App'),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        //backgroundColor:Color(0xffEFD569)
      ),
      body: Center(
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NoWeatherBody()),
                );
              },
              child: Text('Start Search Now', style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold)),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(150, 50), // Set the button size
              ),
            ),
          ],
        ),
      ),
    );
  }
}
