import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LotteryongoingList {

  var image;
  String name;
  var date;
  var time;
  int prize ;
  int num;

  LotteryongoingList({ this.image , this.name , this.time , this.date , this.num , this.prize , });
}

List< LotteryongoingList> lottreyongoingList = [
  LotteryongoingList(
    image: 'assets/Screen5Card.png',
    name: ('Solo BattleMania-Match #1'),
    date: '20/01/2021' ,
    time: '12:03 pm' ,
    prize: 7500,
    num: 5 ,
  ),
  LotteryongoingList(

    image: 'assets/Screen4Card.png',
    name: ('Solo BattleMania-Match #1'),
    date: '20/01/2021' ,
    time: '12:03 pm' ,
    prize: 7500,
    num: 5 ,
  ),
  LotteryongoingList(

    image: 'assets/Screen5.png',
    name: ('Solo BattleMania-Match #1'),
    date: '20/01/2021' ,
    time: '12:03 pm' ,
    prize: 7500,
    num: 5 ,
  ),
  LotteryongoingList(
    image: 'assets/Screen3.png',
    name: ('Solo BattleMania-Match #1'),
    date: '20/01/2021' ,
    time: '12:03 pm' ,
    prize: 7500,
    num: 5 ,
  ),

];