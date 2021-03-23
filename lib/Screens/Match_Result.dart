import 'package:flutter/material.dart';
import 'package:tournament_app/Constant.dart';
import 'package:tournament_app/Widget/text.dart';

class Match_Result extends StatefulWidget {
  @override
  _Match_ResultState createState() => _Match_ResultState();
}

class _Match_ResultState extends State<Match_Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        leading: Icon(Icons.arrow_back),
        title: Text(
          'Match Result',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 15 , right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                  child: Image.asset(
                'assets/Screen3.png',
                height: 200,
                width: MediaQuery.of(context).size.width / 1.1,
              )),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Texts(data: 'Squad BattleMania - Match #5'),
              ),
              SizedBox(height: 10,),
              Container(
                  height: 35,
                  width: 270,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: DarkGreen)),
                  padding: EdgeInsets.only(left: 10),
                  child: Text('Organised on 28/01/2021 12:14 pm',
                      style: TextStyle(fontSize: 15, color: Colors.black))),
              SizedBox(height: 10,),
              Row(
                children: [
                  Container(
                      height: 35,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: DarkGreen)),
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text('Winning Price',
                              style: TextStyle(fontSize: 12, color: Colors.black)),
                          Text(':'),
                          Icon(
                            Icons.monetization_on,
                            color: Colors.amber,
                            size: 20,
                          ),
                          Text(
                            '500',
                            style:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                          ),
                        ],
                      )),
                  SizedBox(width: 10,),
                  Container(
                      height: 35,
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: DarkGreen)),
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text('Per Kill',
                              style: TextStyle(fontSize: 12, color: Colors.black)),
                          Text(':'),
                          Icon(
                            Icons.monetization_on,
                            color: Colors.amber,
                            size: 20,
                          ),
                          Text(
                            '5',
                            style:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                          ),
                        ],
                      )),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                  height: 35,
                  width: 110,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: DarkGreen)),
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Text('Entry Fee',
                          style: TextStyle(fontSize: 12, color: Colors.black)),
                      Text(':'),
                      Icon(
                        Icons.monetization_on,
                        color: Colors.amber,
                        size: 20,
                      ),
                      Text(
                        '50',
                        style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 10,),
                child: Card(
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          color: DarkGreen,
                          padding: EdgeInsets.only(left: 10 , right: 10),
                          child: Center(child: Text('Winner',style: TextStyle(color: Colors.white),)),
                        ),
                        Container(
                          height: 50,
                          padding: EdgeInsets.only(left: 10 , right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('#'),
                              Text('Player Name'),
                              Text('Kills'),
                              Text('Winning'),


                            ],
                          ),
                        ),
                      ],
                    )
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10,),
                child: Card(
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          color: DarkGreen,
                          padding: EdgeInsets.only(left: 10 , right: 10),
                          child: Center(child: Text('Full Result',style: TextStyle(color: Colors.white),)),
                        ),
                        Container(
                          height: 50,
                          padding: EdgeInsets.only(left: 10 , right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('#'),
                              Text('Player Name'),
                              Text('Kills'),
                              Text('Winning'),


                            ],
                          ),
                        ),
                      ],
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
