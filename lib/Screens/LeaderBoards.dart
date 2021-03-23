import 'package:flutter/material.dart';
import 'package:tournament_app/Constant.dart';

class LeaderBoard extends StatefulWidget {
  @override
  _LeaderBoardState createState() => _LeaderBoardState();
}

class _LeaderBoardState extends State<LeaderBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        leading: Icon(Icons.arrow_back),
        title: Text('Leaderboard',style: TextStyle(
            color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),

      ),
      body: Container(
        child: Column(
          children: [
            Container(
              color: DarkGreen,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Text('Username', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.white),),
                  Text('Total Referral', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.white),),
              ],),
            )
          ],
        ),
      ),
    );
  }
}
