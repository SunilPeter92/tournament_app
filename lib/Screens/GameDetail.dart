import 'package:flutter/material.dart';
import 'package:tournament_app/Constant.dart';
import 'package:tournament_app/Screens/GameDescription.dart';
import 'package:tournament_app/Screens/Joined_Members.dart';
import 'package:tournament_app/Screens/Upcominggame.dart';

class GameDetail extends StatefulWidget {
  @override
  _GameDetailState createState() => _GameDetailState();
}

class _GameDetailState extends State<GameDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        color: DarkGreen,
        child: Center(
          child: Text('ALREADY JOIN', style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),
        ),
      ),

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

      ),
      body: Container(

        child: DefaultTabController(
          length: 2,
          child: Padding(
            padding: EdgeInsets.only(left: 10,right: 10 , top: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                )
              ),
              child: Column(
                children: [
                  Image.asset('assets/Screen5Card.png',height: 200,width:MediaQuery.of(context).size.width/1.1,),
                  Container(
                    height: 50,
                    child: Material(
                      color: DarkGreen,
                      child: TabBar(
                        unselectedLabelColor: Colors.white,
                        labelColor: Colors.yellow,
                        indicatorColor: Colors.transparent,
                        tabs: [
                          Tab(child: Text('DESCRIPTION',),),
                          Tab(child: Text('JOIN MEMBER'),),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                       GameDescription(),
                       JoinedMember(),

                      ],
                    ),
                  ),


                ],
              ),
            ),
          ),

        ),
      ),
    );
  }
}
