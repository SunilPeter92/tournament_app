import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tournament_app/Constant.dart';

class Watch_vedio extends StatefulWidget {
  @override
  _Watch_vedioState createState() => _Watch_vedioState();
}

class _Watch_vedioState extends State<Watch_vedio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        leading: Icon(Icons.arrow_back),
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext bc) => [
              PopupMenuItem(child: Text("MY Rewards"), value: "/My_Rewards"),
              PopupMenuItem(
                  child: Text("Leaderboard"), value: "/LeaderBoard"),
              PopupMenuItem(child: Text("Terms & Conditions"), value: "/Terms_Conditions"),
            ],
            onSelected: (route) {
              print(route);
              // Note You must create respective pages for navigation
              Navigator.pushNamed(context, route);
            },
          ),
          // InkWell(
          //   onTap: (){
          //     myPopMenu();
          //     },
          //   child: Icon(
          //     Icons.more_vert,
          //     color: Colors.white,
          //   ),
          // ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "WATCH MORE TO EARN MORE",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 40,
            ),

            Text("COMPPLETE TASK"),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              width: 40,
              decoration: new BoxDecoration(
                border: Border.all(
                )
              ),
              child:Center(child: Text('0/5')) ,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "How it Works",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(40)),
                    child: Center(
                      child: FaIcon(FontAwesomeIcons.play,
                        size: 40,
                        color: Colors.white,
                      ),
                    )),
                Icon(Icons.arrow_forward),
                Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(40)),
                    child: Center(
                        child:
                        FaIcon(
                            FontAwesomeIcons.gift,
                          size: 40,
                          color: Colors.white,
                        ))),
                Icon(Icons.arrow_forward),
                Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(40)),
                    child: Center(
                        child: FaIcon(
                          FontAwesomeIcons.gamepad,
                          size: 40,
                          color: Colors.white,
                        ))),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'watch Vedio',
                  style: TextStyle(fontSize: 8),
                ),
                Text(
                  'Get Reward',
                  style: TextStyle(fontSize: 8),
                ),
                Text(
                  'Joins A Match',
                  style: TextStyle(fontSize: 8),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 1.4,
              decoration: BoxDecoration(
                  color: DarkGreen, borderRadius: BorderRadius.circular(5)),
              child: Center(
                  child: Text(
                    'REFFER NOW',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
  Widget myPopMenu() {
    return PopupMenuButton(
        itemBuilder: (context) => [
          PopupMenuItem(
              value: 1,
              child: Text('MY Rewards')),
          PopupMenuItem(
              value: 2,
              child: Text('Leaderboard')),
          PopupMenuItem(
              value: 2,
              child: Text('Terms & Conditions')),
        ]);
  }
}
