
import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tournament_app/Screens/BottomNavigation.dart';
import 'package:tournament_app/Screens/Global.dart';
import 'package:tournament_app/Screens/Login.dart';
import 'package:tournament_app/Screens/Models/GameModel.dart';
import 'package:http/http.dart' as http;
import 'package:tournament_app/Screens/Models/GetUserModel.dart';
import 'package:tournament_app/Screens/Models/RegisterModel.dart';


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



  static Edit_Profile(BuildContext context ,username ,email , mobile ,  dob ,gender , userid ){
    FormData data = FormData.fromMap({
      "uname": username,
      "email": email,
      "mobile": mobile,
      "gender": gender ,
       "dob": dob ,
      "id": userid

    });

    Dio dio = new Dio();

    dio.post(Global.baseurl+"edit_profile", data: data)
        .then((response) {

      print(response.statusCode);
      if (response.statusCode == 201) {
        Fluttertoast.showToast(
            msg: 'Profile Updated', toastLength: Toast.LENGTH_LONG);
      }
      else if (response.statusCode == 202) {
        Fluttertoast.showToast(
            msg: 'This E-Mail already exists!', toastLength: Toast.LENGTH_LONG);
      }
    }).catchError((error) => print(error));

  }
  static Reset_Password(BuildContext context ,oldpassword ,newpassword ,  userid ){
    FormData data = FormData.fromMap({
      "old_pass": oldpassword,
      "new_pass": newpassword,
      "id": userid

    });

    Dio dio = new Dio();

    dio.post(Global.baseurl+"reset_passwrod", data: data)
        .then((response) {

      print(response.statusCode);
      if (response.statusCode == 201) {
        Fluttertoast.showToast(
            msg: 'Password Updated', toastLength: Toast.LENGTH_LONG);
      }
      else if (response.statusCode == 202) {
        Fluttertoast.showToast(
            msg: 'old password not matched', toastLength: Toast.LENGTH_LONG);
      }
    }).catchError((error) => print(error));

  }
  // final client = Dio();
  //
  // Future<RegisterModel> getData() async {
  //   final url = Global.baseurl+"user_register";
  //
  //   try {
  //     final response = await client.get(url);
  //
  //     if (response.statusCode == 200) {
  //       return RegisterModel.fromJson(response.data);
  //     } else {
  //       print('${response.statusCode} : ${response.data.toString()}');
  //       throw response.statusCode;
  //     }
  //   } catch (error) {
  //     print(error);
  //   }
  // }

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
  static Future<GetUserModel> getUsers() async {
    try {


      final http.Response response = await http.get( Global.baseurl + "get_user" + "/" + "4" );


          if (response.statusCode == 201) {
        return GetUserModel.fromJson(jsonDecode(response.body));
      }

    }

      catch (e) {
      throw Exception("Unknown Error");
     }
  }

}