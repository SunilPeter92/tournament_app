import 'package:flutter/material.dart';
import 'package:tournament_app/Screens/LeaderBoards.dart';
import 'package:tournament_app/Screens/Login.dart';
import 'package:tournament_app/Screens/My_Referrals.dart';
import 'package:tournament_app/Screens/RegisterPage.dart';
import 'package:tournament_app/Screens/Rewards.dart';
import 'package:tournament_app/Screens/Terms_Conditions.dart';


import 'Screens/SplashScreen.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
        home: SplashScreen(),
     // home: RegisterPage(),
      //Wallet(),

      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: Colors.black
      ),
      routes: {
        "/register":(context)=>RegisterPage(),
        "/login":(context)=>Login(),
        "/My_Rewards":(context)=>My_Rewards(),
        "/LeaderBoard":(context)=> LeaderBoard(),
        "/Terms_Conditions":(context)=> Terms_Conditions(),
        "/My_Referrals":(context)=> My_Referrals(),
      },
    );
  }
}
