import 'package:flutter/material.dart';
import 'package:tournament_app/Constant.dart';

import 'LISTS/StatisticsList.dart';

class Statistics extends StatefulWidget {
  @override
  _StatisticsState createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        leading: Icon(Icons.arrow_back),
        title: Text(
          'My Statistics',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 50,
              color: DarkGreen,
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Container(
                    width:30,
                      child: Text('#', style: TextStyle(color: Colors.white , fontSize: 15 , fontWeight: FontWeight.w600 ),)),
                  Container(
                      width:160,
                      child: Text("Match info", style: TextStyle(color: Colors.white , fontSize: 15 , fontWeight: FontWeight.w600 ),)),
                  Container(
                      width:80,
                      child: Text("Paid", style: TextStyle(color: Colors.white , fontSize: 15 , fontWeight: FontWeight.w600 ),)),
                  Container(
                      width:80,
                      child: Text("Won", style: TextStyle(color: Colors.white , fontSize: 15 , fontWeight: FontWeight.w600 ),)),

                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height/1.2,
              child:  ListView.builder(
                  physics: ClampingScrollPhysics(),
                  itemCount: statisticList.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child:  Column(

                        children: [
                          Row(
                            children: [
                              SizedBox(width: 10,),
                              Container(
                                  width:30,
                                  child: Text(statisticList[index].index.toString(), style: TextStyle(  fontSize: 15 , fontWeight: FontWeight.w600 ),)),
                              Container(
                                  width:160,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(statisticList[index].Matchtype, style: TextStyle( fontSize: 15 , fontWeight: FontWeight.w600 ),),
                                      Row(
                                        children: [
                                          Text(statisticList[index].date),
                                          Text(statisticList[index].time),
                                        ],
                                      )
                                    ],
                                  )),
                              Container(
                                  width:80,
                                  child: Text(statisticList[index].paid.toString(), style: TextStyle(fontSize: 15 , fontWeight: FontWeight.w600 ),)),
                              Container(
                                  width:80,
                                  child: Text(statisticList[index].won.toString(), style: TextStyle( fontSize: 15 , fontWeight: FontWeight.w600 ),)),

                            ],
                          ),
                          Divider()
                        ],
                      ),


                    );


                  }
              ),
            )
          ],
        ),
      ),

    );
  }
}
