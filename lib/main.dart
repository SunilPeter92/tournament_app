import 'package:flutter/material.dart';
import 'package:tournament_app/Screens/Login.dart';
import 'package:tournament_app/Screens/RegisterPage.dart';

import 'Screens/SplashScreen.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: SplashScreen(),
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: Colors.black
      ),
      routes: {
        "/register":(context)=>RegisterPage(),
        "/login":(context)=>Login(),
      },
    );
  }
}
