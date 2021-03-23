import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tournament_app/Constant.dart';
import 'package:tournament_app/Widget/text.dart';

class GameDescription extends StatefulWidget {
  @override
  _GameDescriptionState createState() => _GameDescriptionState();
}

class _GameDescriptionState extends State<GameDescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Container(
            width:MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Texts(data: 'DUE PUB G - Match # 1'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Row(
                    children: [
                      Container(
                          height: 35,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: DarkGreen)),
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Text(
                                'Team',
                                style: TextStyle(fontSize: 12, color: Colors.black),
                              ),
                              Text(':'),
                              Text(
                                'DUO',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w700),
                              ),
                            ],
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          height: 35,
                          width: 110,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: DarkGreen)),
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Text('Entry Fee',
                                  style:
                                      TextStyle(fontSize: 12, color: Colors.black)),
                              Text(':'),
                              Icon(
                                Icons.monetization_on,
                                color: Colors.amber,
                                size: 20,
                              ),
                              Text(
                                '50',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w700),
                              ),
                            ],
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          height: 35,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: DarkGreen)),
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Text('Mode',
                                  style:
                                      TextStyle(fontSize: 12, color: Colors.black)),
                              Text(':'),
                              Text(
                                'TPP',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w700),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Container(
                          height: 35,
                          width: 120,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: DarkGreen)),
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Text(
                                'Match Type',
                                style: TextStyle(fontSize: 12, color: Colors.black),
                              ),
                              Text(':'),
                              Text(
                                'PAID',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w700),
                              ),
                            ],
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          height: 35,
                          width: 125,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: DarkGreen)),
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Text('Map',
                                  style:
                                      TextStyle(fontSize: 12, color: Colors.black)),
                              Text(':'),
                              Icon(
                                Icons.monetization_on,
                                color: Colors.amber,
                                size: 20,
                              ),
                              Text(
                                'Miramar',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w700),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Container(
                          height: 35,
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: DarkGreen)),
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Text(
                                'Match Schedule',
                                style: TextStyle(fontSize: 12, color: Colors.black),
                              ),
                              Text(':'),
                              Text(
                                '01-02-2021 12:00 pm',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w700),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10,),
                  child: Card(
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            color: DarkGreen,
                            padding: EdgeInsets.only(left: 10 , right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Team',style: TextStyle(color: Colors.white),),
                                Text('Position',style: TextStyle(color: Colors.white),),
                                Text('Player Name',style: TextStyle(color: Colors.white),),
                              ],
                    ),
                          ),
                          Container(
                            height: 50,
                            padding: EdgeInsets.only(left: 10 , right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Team 1'),
                                Text('1'),
                                Container(
                                  width: 70,
                                    child: Text('John')
                                ),

                              ],
                            ),
                          ),
                        ],
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text('PRICE DETAILS', style: TextStyle(fontSize: 18 ,color: DarkGreen),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Container(
                          height: 35,
                          width: 145,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: DarkGreen)),
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Text(
                                'Winning Price',
                                style: TextStyle(fontSize: 12, color: Colors.black),
                              ),
                              Text(':'),
                              Icon(
                                Icons.monetization_on,
                                color: Colors.amber,
                                size: 20,
                              ),
                              Text(
                                '500',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w700),
                              ),
                            ],
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: DarkGreen)),
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Text('Per Kill',
                                  style:
                                  TextStyle(fontSize: 12, color: Colors.black)),
                              Text(':'),
                              Icon(
                                Icons.monetization_on,
                                color: Colors.amber,
                                size: 20,
                              ),
                              Text(
                                '25',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w700),
                              ),
                            ],
                          )),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text('MATCH SPONSOR', style: TextStyle(fontSize: 18 ,color: DarkGreen),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    width:MediaQuery.of(context).size.width,
                    child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galey of type and scrambled it to"
                      , style: TextStyle(fontSize: 15 ,color: Colors.black),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text('ABOUT THIS MATCH', style: TextStyle(fontSize: 18 ,color: DarkGreen),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    width:MediaQuery.of(context).size.width,
                    child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentidlly unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem lpsum.", style: TextStyle(fontSize: 15 ,color: Colors.black),),
                  ),
                ),
                SizedBox(height: 10,)

              ],
            ),
          ),
        ),
      ),
    );
  }
}
