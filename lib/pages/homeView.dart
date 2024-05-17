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
        title: Text('Climate Connect'),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor:Color(0xffFEB941)
      ),
      body: NoWeatherBody(),
    );
  }
}
