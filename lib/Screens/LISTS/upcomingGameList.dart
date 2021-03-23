import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpcomingGame {

  var image;
  String name;
  var date;
  var time;
  int prizeperpool ;
  int prizeperkill;
  int num;

  UpcomingGame({ this.image , this.name , this.time , this.date , this.num , this.prizeperkill , this.prizeperpool});
}

List<UpcomingGame> upcominggameList = [
  UpcomingGame(
    image: 'assets/back.jpg',
    name: ('Solo BattleMania-Match #1'),
    date: '20/01/2021' ,
    time: '12:03 pm' ,
    prizeperpool: 7500,
    prizeperkill: 50 ,
    num: 5 ,
  ),
  UpcomingGame(

    image: 'assets/Screen5Card.png',
    name: ('Solo BattleMania-Match #1'),
    date: '20/01/2021' ,
    time: '12:03 pm' ,
    prizeperpool: 7500,
    prizeperkill: 50 ,
    num: 5 ,
  ),
  UpcomingGame(

    image: 'assets/Screen4Card.png',
    name: ('Solo BattleMania-Match #1'),
    date: '20/01/2021' ,
    time: '12:03 pm' ,
    prizeperpool: 7500,
    prizeperkill: 50 ,
    num: 5 ,
  ),


];