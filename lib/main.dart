import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/pages/homeView.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SubjectBloc(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: homeView(),
      ),
    );
  }
}
