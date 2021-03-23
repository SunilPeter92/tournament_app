import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:tournament_app/Constant.dart';
import 'package:tournament_app/Screens/LotterOngoing.dart';
import 'package:tournament_app/Widget/text.dart';

class LuckDraw extends StatefulWidget {
  @override
  _LuckDrawState createState() => _LuckDrawState();
}

class _LuckDrawState extends State<LuckDraw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          automaticallyImplyLeading: false,
          leading: Icon(Icons.arrow_back),
          title: Text('Lottery',style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),
        ),
      body: Container(
        color: Colors.grey[100],
        child: Container(
         // padding: EdgeInsets.only(left: 20),
          //color: Colors.white,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: DefaultTabController(
            length: 2,
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,

                  width: MediaQuery.of(context).size.width,
                  child: Material(
                    color: DarkGreen,
                    child: TabBar(

                      indicatorColor: Colors.white,
                      unselectedLabelColor: Colors.white,
                      labelColor: Colors.black,

                      tabs: [
                        Tab(child: Text('ONGOING',),),
                        Tab(child: Text('RESULT'),),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [

                      Container(
                          color: Colors.white,
                          child: LotterOngoing()),

                      Container(
                          color: Colors.white,
                          child: Center(child: Text('No Lottery Result Found'))),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
