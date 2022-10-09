import 'package:flutter/material.dart';
import 'package:travel_app/LoginScreen.dart';
import 'package:travel_app/start_screen.dart';
import 'package:travel_app/tourism.dart';

import 'HomeScreen.dart';
import 'countery.dart';
import 'mainHomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home:SelectCountry()
    );
  }
}
