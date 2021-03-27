
import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tournament_app/Screens/BottomNavigation.dart';
import 'package:tournament_app/Screens/Global.dart';
import 'package:tournament_app/Screens/Login.dart';
import 'package:tournament_app/Screens/Models/GameModel.dart';
import 'package:http/http.dart' as http;


class API{

  static login(BuildContext context ,email ,password){
    FormData data = FormData.fromMap({
      "email": email,
      "password": password,
    });

    Dio dio = new Dio();

    dio.post( Global.baseurl+"user_login", data: data)
        .then((response) {

      print(response.statusCode);
      if (response.statusCode == 201) {

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BottomNavigation()),
        );
      }
      else if (response.statusCode == 202) {
        Fluttertoast.showToast(
            msg: "Email and password does't match!", toastLength: Toast.LENGTH_LONG);
      }
    }).catchError((error) => print(error));
  }
  static register(BuildContext context ,username ,email ,password , country , mobile , promo ){
    FormData data = FormData.fromMap({
      "uname": username,
      "email": email,
      "password": password,
      "promo": promo,
      "country": country,
      "mobile": mobile

    });

    Dio dio = new Dio();

    dio.post(Global.baseurl+"user_register", data: data)
        .then((response) {

      print(response.statusCode);
      if (response.statusCode == 201) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Login()),
        );

      }
      else if (response.statusCode == 202) {
        Fluttertoast.showToast(
            msg: 'This E-Mail already exists!', toastLength: Toast.LENGTH_LONG);
      }
    }).catchError((error) => print(error));
  }

  static Future<Games> getgames() async {
    try {


      final http.Response response = await http.get( Global.baseurl + "get_games");


          if (response.statusCode == 201) {
        return Games.fromJson(jsonDecode(response.body));
      }

    }
    // on SocketException catch (e) {
    //   throw NoInternetExceptions("No Internet", "assets/internet.png");
    // } on HttpException catch (e) {
    //   throw HttpException("No Service found");
    // } on FormatException catch (e) {
    //   throw InvalidDataFormat("Invalid Data format");
    // }
      catch (e) {
      throw Exception("Unknown Error");
     }
  }

}