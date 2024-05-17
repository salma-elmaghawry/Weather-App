import 'package:flutter/material.dart';
import 'package:weather/pages/homeView.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    //اعمل ui اللى يعرضلى ان مفيش ويزر ممكن تعمل سيرش
    return homeView();
  }
}
