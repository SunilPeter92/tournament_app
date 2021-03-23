import 'package:flutter/material.dart';
import 'package:tournament_app/Screens/ResultGame.dart';
import 'package:tournament_app/Screens/Upcominggame.dart';

class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        leading: Icon(Icons.arrow_back),
        title: Text('PUB G',style: TextStyle(
            color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              children: [
                Container(
                  height: 35,
                  width: 65,
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(20)
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.monetization_on, color: Colors.amber,),
                      Text("50", style: TextStyle(color:Colors.black, fontSize: 18, fontWeight: FontWeight.w700),)
                    ],
                  ),
                )
              ],

            ),
          ),

        ],
        // bottom: TabBar(
        //
        //   tabs: [
        //     Tab(icon: Icon(Icons.directions_car)),
        //     Tab(icon: Icon(Icons.directions_transit)),
        //     Tab(icon: Icon(Icons.directions_bike)),
        //   ],
        // ),
      ),
      body:Container(
        color: Colors.grey[100],
        child: Container(
          padding: EdgeInsets.only(left: 20),
          //color: Colors.white,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width/1.07,
          child: DefaultTabController(
            length: 3,
            child: Column(
              children: <Widget>[
                Container(
                 height: 50,
                  width: MediaQuery.of(context).size.width/1.1,
                  child: Material(
                    color: Colors.white,
                    child: TabBar(
                      indicatorColor: Colors.yellow,
                      unselectedLabelColor: Colors.black,
                      labelColor: Colors.green,

                      tabs: [
                        Tab(child: Text('ONGOING',),),
                        Tab(child: Text('UPCOMING'),),
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
                          child: Center(child: Text('No Live Match Found'))),
                      Container(
                          color: Colors.white,
                          child: Upcoming()),

                      Container(
                          color: Colors.white,
                          child: ResultGame()),
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
