import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tournament_app/Constant.dart';

class Refer_Earn extends StatefulWidget {
  @override
  _Refer_EarnState createState() => _Refer_EarnState();
}

class _Refer_EarnState extends State<Refer_Earn> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        leading: Icon(Icons.arrow_back),
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext bc) => [
              PopupMenuItem(child: Text("MY Referrals"), value: "/My_Referrals"),
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
              "REFER MORE TO EARN MORE",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width / 1.1,
                child: Text(
                    "Invite your friends on App using your Referral Code to earn 10 When they join First Paid match, with minimum match fee of 20. Your friends also get 5 as Signup Bonus")),
            SizedBox(
              height: 30,
            ),
            Text("YOUR REFFERRAL CODE"),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "demouser",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.copy,
                )
              ],
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
                    child: Icon(
                      Icons.description,
                      size: 40,
                      color: Colors.white,
                    )),
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
                Icon(Icons.arrow_forward),
                Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(40)),
                    child: Center(
                        child: FaIcon(
                          FontAwesomeIcons.gift,
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
                  'User Registers',
                  style: TextStyle(fontSize: 8),
                ),
                Text(
                  'Joins A Match',
                  style: TextStyle(fontSize: 8),
                ),
                Text(
                  'You Get Rewarded',
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
}
