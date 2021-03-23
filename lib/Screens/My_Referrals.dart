import 'package:flutter/material.dart';
import 'package:tournament_app/Constant.dart';
import 'package:tournament_app/Screens/LISTS/RefferalList.dart';

class My_Referrals extends StatefulWidget {
  @override
  _My_ReferralsState createState() => _My_ReferralsState();
}

class _My_ReferralsState extends State<My_Referrals> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        leading: Icon(Icons.arrow_back),
        title: Text('My Referrals',style: TextStyle(
            color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),

      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Center(
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  width: MediaQuery.of(context).size.width/1.1,
                  child: Column(
                    children: [
                      Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: DarkGreen,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5) ,
                              topRight: Radius.circular(5) ,
                            ),
                          ),

                          child: Center(child: Text('MY REFERRALS SUMMARY', style: TextStyle(color: Colors.white, fontSize: 16 , fontWeight: FontWeight.w700),))
                      ),
                      Container(
                        height: 70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Column(
                                children: [
                                  Text('Referrals'),
                                  Text('45'),
                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Column(
                                children: [
                                  Text('Earnings'),
                                  Row(
                                    children: [
                                      Icon(Icons.monetization_on, color: Colors.amber,),
                                      Text('45'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 30,),
            Center(
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),),
                  width: MediaQuery.of(context).size.width/1.1,
                  child: Column(
                    children: [
                      Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: DarkGreen,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5) ,
                              topRight: Radius.circular(5) ,
                            ),
                          ),
                          child: Center(child: Text('MY REFERRALS SUMMARY', style: TextStyle(color: Colors.white, fontSize: 16 , fontWeight: FontWeight.w700),))
                      ),
                      Container(
                        height: 70,
                        color: Colors.black,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Date', style: TextStyle(color: Colors.white),),
                            Text('Player Nmae', style: TextStyle(color: Colors.white),),
                            Text('Status', style: TextStyle(color: Colors.white),),
                          ],
                        ),
                      ),
                      Scrollbar(
                        child: Container(
                          height: MediaQuery.of(context).size.height/1.9,
                          width: MediaQuery.of(context).size.width,
                          child: ListView.builder(
                              physics: ClampingScrollPhysics(),
                              itemCount: referralList.length,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  height: 50,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                          width:100,
                                          child: Text(referralList[index].date)
                                      ),
                                      Container(
                                        width:50,
                                        // padding: EdgeInsets.only(top: 25),
                                        child:Text(referralList[index].name),
                                      ),
                                      Container(
                                        width:50,
                                        //  padding: EdgeInsets.only(top: 20),
                                        child: Text(referralList[index].status),
                                      ),
                                    ],
                                  ) ,


                                );


                              }
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
