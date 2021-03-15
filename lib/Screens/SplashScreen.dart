import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tournament_app/Screens/RegisterPage.dart';
import '../Constant.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);

    Timer(new Duration(seconds: 3), (){

      Navigator.push(context, MaterialPageRoute(builder: (context){
      return new RegisterPage();
      }));
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: kprimary,
      body: Center(
        child: Text('Logo',style: TextStyle(color: Colors.white,fontSize: 36,fontWeight: FontWeight.bold),),
      ),
    );
  }
}
