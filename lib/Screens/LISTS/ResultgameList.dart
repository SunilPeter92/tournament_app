import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultgameList {

  var image;
  String name;
  var date;
  var time;
  int prizeperpool ;
  int prizeperkill;
  int num;

  ResultgameList({ this.image , this.name , this.time , this.date , this.num , this.prizeperkill , this.prizeperpool});
}

List<ResultgameList> resultgameList = [
  ResultgameList(
    image: 'assets/Screen5Card.png',
    name: ('Solo BattleMania-Match #1'),
    date: '20/01/2021' ,
    time: '12:03 pm' ,
    prizeperpool: 7500,
    prizeperkill: 50 ,
    num: 5 ,
  ),


  ResultgameList(
    image: 'assets/Screen4Card.png',
    name: ('Solo BattleMania-Match #1'),
    date: '20/01/2021' ,
    time: '12:03 pm' ,
    prizeperpool: 7500,
    prizeperkill: 50 ,
    num: 5 ,
  ),

];