import 'package:demo7_listview2/pages/searching_page.dart';
import 'package:demo7_listview2/repository/weather_bloc.dart';
import 'package:demo7_listview2/repository/weather_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TweleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: MaterialApp(
            theme: ThemeData(
              accentColor: Colors.blueAccent,
              primarySwatch: Colors.blue,
            ),
            home: Scaffold(
                resizeToAvoidBottomInset: false,
                backgroundColor: Colors.grey[900],
                body: BlocProvider(
                  create: (context) => WeatherBloc(WeatherRepo()),
                  child: SearchPage(),
                ))));
  }
}
