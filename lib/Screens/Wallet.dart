import 'package:flutter/material.dart';
import 'package:tournament_app/Constant.dart';
import 'package:tournament_app/Screens/AddMoney.dart';
import 'package:tournament_app/Screens/LISTS/RewardList.dart';
import 'package:tournament_app/Screens/LISTS/WalletList.dart';
import 'package:tournament_app/Screens/WithDraw_Money.dart';

class Wallet extends StatefulWidget {
  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        leading: Icon(Icons.arrow_back),
        title: Text('WALLET',style: TextStyle(
            color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold, ),),centerTitle:true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 10 , right: 10),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    child: Column(
                      children: [
                        Container(
                            height: 30,
                            decoration: BoxDecoration(
                                color: DarkGreen,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),

                                ),
                            ),
                            width:MediaQuery.of(context).size.width/2.5,

                            child: Center(child: Text('Earning', style: TextStyle(color: Colors.white, fontSize: 16 , fontWeight: FontWeight.w700),))
                        ),
                        Container(
                          height: 35,
                          width:MediaQuery.of(context).size.width/2.5,

                          child: Padding(
                            padding: const EdgeInsets.only(left: 50 , right: 50),
                            child: Row(
                              children: [
                                Icon(Icons.monetization_on, color: Colors.amber,),
                                Text('0')
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: [
                        Container(
                            height: 30,
                            decoration: BoxDecoration(
                              color: DarkGreen,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),

                              ),
                            ),
                            width:MediaQuery.of(context).size.width/2.5,

                            child: Center(child: Text('PAYOUTS', style: TextStyle(color: Colors.white, fontSize: 16 , fontWeight: FontWeight.w700),))
                        ),
                        Container(
                          height: 35,
                          width:MediaQuery.of(context).size.width/2.5,

                          child: Padding(
                            padding: const EdgeInsets.only(left: 50 , right: 50),
                            child: Row(
                              children: [
                                Icon(Icons.monetization_on, color: Colors.amber,),
                                Text('0')
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    child: Column(
                      children: [
                        Container(
                            height: 30,
                            decoration: BoxDecoration(
                              color: DarkGreen,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),

                              ),
                            ),
                            width:MediaQuery.of(context).size.width/2.5,

                            child: Center(child: Text('Win Money', style: TextStyle(color: Colors.white, fontSize: 16 , fontWeight: FontWeight.w700),))
                        ),
                        Container(
                          height: 35,
                          width:MediaQuery.of(context).size.width/2.5,

                          child: Padding(
                            padding: const EdgeInsets.only(left: 50 , right: 50),
                            child: Row(
                              children: [
                                Icon(Icons.monetization_on, color: Colors.amber,),
                                Text('50')
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: [
                        Container(
                            height: 30,
                            decoration: BoxDecoration(
                              color: DarkGreen,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),

                              ),
                            ),
                            width:MediaQuery.of(context).size.width/2.5,

                            child: Center(child: Text('Join Money', style: TextStyle(color: Colors.white, fontSize: 16 , fontWeight: FontWeight.w700),))
                        ),
                        Container(
                          height: 35,
                          width:MediaQuery.of(context).size.width/2.5,

                          child: Padding(
                            padding: const EdgeInsets.only(left: 50 , right: 50),
                            child: Row(
                              children: [
                                Icon(Icons.monetization_on, color: Colors.amber,),
                                Text('70')
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Card(
                child: Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      Text('Main Balance', style:  TextStyle(
                        color: DarkGreen, fontSize: 24,  ),),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.monetization_on, color: Colors.amber,size: 30,),
                          Text('45', style:  TextStyle(
                          color: DarkGreen, fontSize: 24,fontWeight: FontWeight.w700  ),)
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Add_Money()),
                              );
                            },
                            child: Container(
                              height:40,
                              width:MediaQuery.of(context).size.width/3,
                                decoration: BoxDecoration(
                                  color: DarkGreen,
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                child: Center(child: Text('Add', style: TextStyle(color: Colors.white, fontSize: 16 , fontWeight: FontWeight.w500),))
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => WithDraw_Money()),
                              );
                            },
                            child: Container(
                                height:40,
                                width:MediaQuery.of(context).size.width/3,
                                decoration: BoxDecoration(
                                    color: DarkGreen,
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                child: Center(child: Text('Withdraw', style: TextStyle(color: Colors.white, fontSize: 16 , fontWeight: FontWeight.w500),))
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text('WALLET HISTORY', style:  TextStyle(
                  color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),),
              ),
              SizedBox(height: 20,),
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                    itemCount: walletList.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap:(){
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => Game()),
                          // );
                        } ,
                        child: Card(
                          child: Container(
                            height: 80,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  width:50,
                                    child: Text(walletList[index].text)
                                ),
                                Container(
                                  width:150,
                                  padding: EdgeInsets.only(top: 25),
                                  child: Column(
                                    children: [
                                      Text(walletList[index].text1),
                                      SizedBox(height: 5,),
                                      Row(
                                        children: [
                                          Text(walletList[index].date),
                                          SizedBox(width: 5,),
                                          Text(walletList[index].time),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                    width:50,
                                    padding: EdgeInsets.only(top: 20),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Icon(Icons.monetization_on, color: Colors.amber,),
                                            Text(walletList[index].price.toString()),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.monetization_on, color: Colors.amber,),
                                            Text(walletList[index].price.toString()),
                                          ],
                                        ),
                                      ],
                                    )
                                ),
                              ],
                            ) ,


                          ),
                        ),
                      );


                    }
                ),
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
