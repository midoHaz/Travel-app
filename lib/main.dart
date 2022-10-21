import 'package:flutter/material.dart';
import 'package:travel_app/Logining/LoginScreen.dart';
import 'package:travel_app/startup/FirstScreen.dart';
import 'package:travel_app/Logining/SignUp.dart';
import 'package:travel_app/Egypt/WelcomeEgypt.dart';
import 'package:travel_app/startup/ThirdScreen.dart';
import 'package:travel_app/Egypt/EgyptTourism.dart';

import 'startup/SecondScreen.dart';
import 'countery.dart';
import 'Egypt/EgyptHomeScreen.dart';

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
    home:FirstScreen()
    );
  }
}
