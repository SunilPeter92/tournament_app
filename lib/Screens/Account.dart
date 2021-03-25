import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tournament_app/Constant.dart';
import 'package:tournament_app/Screens/Aboutus.dart';
import 'package:tournament_app/Screens/Announcement.dart';
import 'package:tournament_app/Screens/AppTutorial.dart';
import 'package:tournament_app/Screens/CustomerSupport.dart';
import 'package:tournament_app/Screens/Game.dart';
import 'file:///E:/Flutter_Projects/tournament_app-main/lib/Screens/MyProfile.dart';
import 'package:tournament_app/Screens/LISTS/accountitemList.dart';
import 'package:tournament_app/Screens/LeaderBoards.dart';
import 'package:tournament_app/Screens/My_Orders.dart';
import 'package:tournament_app/Screens/My_Referrals.dart';
import 'package:tournament_app/Screens/Refer&Earn.dart';
import 'package:tournament_app/Screens/Rewards.dart';
import 'package:tournament_app/Screens/Statistic.dart';
import 'package:tournament_app/Screens/Terms_Conditions.dart';
import 'package:tournament_app/Screens/TopPlayers.dart';
import 'package:tournament_app/Screens/Wallet.dart';
import 'package:tournament_app/Widget/text.dart';
import '../Constant.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {

  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: DarkGreen,
                  height: 250,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        SizedBox(height: 40,),
                        Row(
                          children: [
                            Text('Hello', style: TextStyle(color: Colors.yellow,fontSize: 15),)
                          ],
                        ),
                        SizedBox(height: 20,),
                       Row(
                         children: [
                           CircleAvatar(
                             radius: 50,
                             backgroundColor: Colors.white,
                             child: Icon(Icons.person , size: 100,color: DarkGreen,),
                           ),
                           Column(
                             children: [
                               Padding(
                                 padding: const EdgeInsets.only(left: 20),
                                 child: Container(
                                   width: 200,
                                   child: Row(
                                     children: [
                                       Text('Username     :' + "     Jhhn doe", style: TextStyle(
                                           color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),

                                     ],
                                   ),
                                 ),
                               ),
                               SizedBox(height: 20,),
                               Padding(
                                 padding: const EdgeInsets.only(left: 20),
                                 child: Container(
                                   width: 200,
                                   child: Row(
                                     children: [
                                       Text('Balance         :' + "     50", style: TextStyle(
                                           color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),

                                     ],
                                   ),
                                 ),
                               ),
                             ],
                           ),

                         ],
                       )
                      ],
                    ),

                  ),


                ),

                Padding(
                  padding: const EdgeInsets.only(top: 200,left: 30),
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width/1.2,
                    decoration: BoxDecoration(
                      color: LightGreen,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(child: Column(
                          children: [
                            Text('1', style: TextStyle(color: Colors.white),),
                            Container(
                              width:55 ,  child: Text('Matches Played', style: TextStyle(color: Colors.white),)),
                            //Text('Played', style: TextStyle(color: Colors.white),),
                          ],
                        )),
                        VerticalDivider(endIndent: 20,color: Colors.yellow,),
                        Container(child: Column(
                          children: [
                            Text('0', style: TextStyle(color: Colors.white),),
                            Container(
                                width:45,child: Text('Total Killed', style: TextStyle(color: Colors.white ,),)),
                           // Text('Played', style: TextStyle(color: Colors.white),),
                          ],
                        )),

                        VerticalDivider(endIndent: 20, color: Colors.yellow,),
                        Container(child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.monetization_on, color: Colors.yellow, size: 20,),
                                Text('1', style: TextStyle(color: Colors.white),),
                              ],
                            ),
                            Container(
                                width:50,child: Text('Amount Won', style: TextStyle(color: Colors.white),)),
                           // Text('Played', style: TextStyle(color: Colors.white),),
                          ],
                        )),
                      ],
                    ),

                  ),
                )
              ],

            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: MediaQuery.of(context).size.height/2.7,
                width: MediaQuery.of(context).size.width/1.2,
                decoration: BoxDecoration(
                    color: kprimary,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Container(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 20,),
                                  Icon(Icons.notifications_none_outlined, color: Colors.grey[500],),
                                  SizedBox(width: 20,),
                                  TextGrey(data :"Push Notification"),
                                  Spacer(),
                                  Container(
                                    height: 35,
                                    child: Switch(
                                      value: isSwitched,
                                      onChanged: (value){
                                        setState(() {
                                          isSwitched=value;
                                          print(isSwitched);
                                        });
                                      },
                                      activeTrackColor: Colors.white,
                                      activeColor: Colors.yellow,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(color: Colors.grey[500],),
                              InkWell(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => MyProfile()),
                                  );
                                },
                                child: Row(
                                  children: [
                                    SizedBox(width: 20,),
                                    Icon(Icons.person_outline, color: Colors.grey[500],),
                                    SizedBox(width: 20,),
                                    TextGrey(data :"My Profile"),
                                    Spacer(),
                                    Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey[500],size: 20,),
                                    SizedBox(width: 5,),
                                  ],
                                ),
                              ),
                              Divider(color: Colors.grey[500],),
                              InkWell(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Wallet()),
                                  );
                                },
                                child: Row(
                                  children: [
                                    SizedBox(width: 20,),
                                    Icon(Icons.account_balance_wallet_rounded, color: Colors.grey[500],),
                                    SizedBox(width: 20,),
                                    TextGrey(data :"My Wallet"),
                                    Spacer(),
                                    Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey[500],size: 20,),
                                    SizedBox(width: 5,),
                                  ],
                                ),
                              ),
                              Divider(color: Colors.grey[500],),
                              InkWell(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Game()),
                                  );
                                },
                                child: Row(
                                  children: [
                                    SizedBox(width: 20,),
                                    FaIcon(FontAwesomeIcons.gamepad ,color: Colors.grey[500],),
                                    SizedBox(width: 20,),
                                    TextGrey(data :"My Matches"),
                                    Spacer(),
                                    Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey[500],size: 20,),
                                    SizedBox(width: 5,),
                                  ],
                                ),
                              ),
                              Divider(color: Colors.grey[500],),
                              InkWell(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => My_Orders()),
                                  );
                                },
                                child: Row(
                                  children: [
                                    SizedBox(width: 20,),
                                    Icon(Icons.local_grocery_store, color: Colors.grey[500],),
                                    SizedBox(width: 20,),
                                    TextGrey(data :"My Order"),
                                    Spacer(),
                                    Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey[500],size: 20,),
                                    SizedBox(width: 5,),
                                  ],
                                ),
                              ),
                              Divider(color: Colors.grey[500],),
                              InkWell(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Statistics()),
                                  );
                                },
                                child: Row(
                                  children: [
                                    SizedBox(width: 20,),
                                    Icon(Icons.assessment_outlined, color: Colors.grey[500],),
                                    SizedBox(width: 20,),
                                    TextGrey(data :"My Statistics"),
                                    Spacer(),
                                    Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey[500],size: 20,),
                                    SizedBox(width: 5,),
                                  ],
                                ),
                              ),
                              Divider(color: Colors.grey[500],),
                              InkWell(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => My_Rewards()),
                                  );
                                },
                                child: Row(
                                  children: [
                                    SizedBox(width: 20,),
                                    Icon(Icons.card_giftcard, color: Colors.grey[500],),
                                    SizedBox(width: 20,),
                                    TextGrey(data :"My Reward"),
                                    Spacer(),
                                    Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey[500],size: 20,),
                                    SizedBox(width: 5,),
                                  ],
                                ),
                              ),
                              Divider(color: Colors.grey[500],),
                              InkWell(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => My_Referrals()),
                                  );
                                },
                                child: Row(
                                  children: [
                                    SizedBox(width: 20,),
                                    Icon(Icons.people_rounded, color: Colors.grey[500],),
                                    SizedBox(width: 20,),
                                    TextGrey(data :"My Referrals"),
                                    Spacer(),
                                    Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey[500],size: 20,),
                                    SizedBox(width: 5,),
                                  ],
                                ),
                              ),
                              Divider(color: Colors.grey[500],),
                              InkWell(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Announcement()),
                                  );
                                },
                                child: Row(
                                  children: [
                                    SizedBox(width: 20,),
                                    Icon(Icons.flag, color: Colors.grey[500],),
                                    SizedBox(width: 20,),
                                    TextGrey(data :"Announcement"),
                                    Spacer(),
                                    Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey[500],size: 20,),
                                    SizedBox(width: 5,),
                                  ],
                                ),
                              ),
                              Divider(color: Colors.grey[500],),
                              InkWell(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => TopPlayers()),
                                  );
                                },
                                child: Row(
                                  children: [
                                    SizedBox(width: 20,),
                                    Icon(Icons.star, color: Colors.grey[500],),
                                    SizedBox(width: 20,),
                                    TextGrey(data :"Top Players"),
                                    Spacer(),
                                    Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey[500],size: 20,),
                                    SizedBox(width: 5,),
                                  ],
                                ),
                              ),
                              Divider(color: Colors.grey[500],),
                              InkWell(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => LeaderBoard()),
                                  );
                                },
                                child: Row(
                                  children: [
                                    SizedBox(width: 20,),
                                    Icon(Icons.assessment_rounded, color: Colors.grey[500],),
                                    SizedBox(width: 20,),
                                    TextGrey(data :"Leaderboard"),
                                    Spacer(),
                                    Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey[500],size: 20,),
                                    SizedBox(width: 5,),
                                  ],
                                ),
                              ),
                              Divider(color: Colors.grey[500],),
                              InkWell(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => AppTutorial()),
                                  );
                                },
                                child: Row(
                                  children: [
                                    SizedBox(width: 20,),
                                    Icon(Icons.info, color: Colors.grey[500],),
                                    SizedBox(width: 20,),
                                    TextGrey(data :"App Tutorial"),
                                    Spacer(),
                                    Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey[500],size: 20,),
                                    SizedBox(width: 5,),
                                  ],
                                ),
                              ),
                              Divider(color: Colors.grey[500],),
                              InkWell(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Aboutus()),
                                  );
                                },
                                child: Row(
                                  children: [
                                    SizedBox(width: 20,),
                                    Icon(Icons.info, color: Colors.grey[500],),
                                    SizedBox(width: 20,),
                                    TextGrey(data :"About Us"),
                                    Spacer(),
                                    Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey[500],size: 20,),
                                    SizedBox(width: 5,),
                                  ],
                                ),
                              ),
                              Divider(color: Colors.grey[500],),
                              InkWell(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Customer_Support()),
                                  );
                                },
                                child: Row(
                                  children: [
                                    SizedBox(width: 20,),
                                    Icon(Icons.headset, color: Colors.grey[500],),
                                    SizedBox(width: 20,),
                                    TextGrey(data :"Customer Support"),
                                    Spacer(),
                                    Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey[500],size: 20,),
                                    SizedBox(width: 5,),
                                  ],
                                ),
                              ),
                              Divider(color: Colors.grey[500],),
                              Row(
                                children: [
                                  SizedBox(width: 20,),
                                  Icon(Icons.share, color: Colors.grey[500],),
                                  SizedBox(width: 20,),
                                  TextGrey(data :"Share App"),
                                  Spacer(),
                                  Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey[500],size: 20,),
                                  SizedBox(width: 5,),
                                ],
                              ),
                              Divider(color: Colors.grey[500],),
                              InkWell(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Terms_Conditions()),
                                  );
                                },
                                child: Row(
                                  children: [
                                    SizedBox(width: 20,),
                                    Icon(Icons.event_note, color: Colors.grey[500],),
                                    SizedBox(width: 20,),
                                    TextGrey(data :"Terms & Conditions"),
                                    Spacer(),
                                    Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey[500],size: 20,),
                                    SizedBox(width: 5,),
                                  ],
                                ),
                              ),
                              Divider(color: Colors.grey[500],),
                              Row(
                                children: [
                                  SizedBox(width: 20,),
                                  Icon(Icons.power_settings_new, color: Colors.grey[500],),
                                  SizedBox(width: 20,),
                                  TextGrey(data :"Logout"),
                                  Spacer(),
                                  Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey[500],size: 20,),
                                  SizedBox(width: 5,),
                                ],
                              ),
                              Divider(color: Colors.grey[500],),
                              Container(
                                child:Text("Version : 1", style: TextStyle(color: Colors.white),),
                              ),

                              SizedBox(height: 5,)



                            ],
                          ),
                        ),
                      ),


              ),
            ),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
