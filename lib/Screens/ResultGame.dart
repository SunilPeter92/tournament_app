import 'package:flutter/material.dart';
import 'package:tournament_app/Screens/Match_Result.dart';

import '../Constant.dart';
import 'LISTS/ResultgameList.dart';
class ResultGame extends StatefulWidget {
  @override
  _ResultGameState createState() => _ResultGameState();
}

class _ResultGameState extends State<ResultGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height/1.09,
          child:  ListView.builder(
              physics: ClampingScrollPhysics(),
              itemCount: resultgameList.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Container(

                    width: MediaQuery.of(context).size.width/1.1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 200,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset(resultgameList[index].image),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20,top: 20),
                          child: Row(
                            children: [
                              Container(
                                  height: 40,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: DarkGreen,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: DarkGreen)
                                  ),
                                  child: Center(child: Text('Duo', style: TextStyle(color: Colors.white),))
                              ),
                              SizedBox(width: 10,),
                              Container(
                                  height: 40,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: DarkGreen)
                                  ),
                                  child: Center(child: Text('Bermuda'))
                              ),
                              SizedBox(width: 10,),
                              Container(
                                  height: 40,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: DarkGreen)
                                  ),
                                  child: Center(child: Text('TPP'))
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,top: 10),
                          child: Text(resultgameList[index].name),
                        ),
                        Divider(indent: 20,endIndent: 20,),
                        Padding(
                          padding: const EdgeInsets.only(left: 30,top: 10, bottom: 10, right: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text(resultgameList[index].date),
                                  Text(resultgameList[index].time),
                                ],
                              ),
                              VerticalDivider(color: Colors.black,),
                              Column(
                                children: [
                                  Text('PRIZE GAME'),
                                  Text(resultgameList[index].prizeperpool.toString()),
                                ],
                              ),
                              VerticalDivider(color: Colors.black,),
                              Column(
                                children: [
                                  Text('PER KILL'),
                                  Text(resultgameList[index].prizeperpool.toString()),
                                ],
                              ),

                            ],
                          ),
                        ),
                        Divider(endIndent: 20,indent: 20,),

                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [

                              InkWell(
                                onTap: (){
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(builder: (context) => GameDetail()),
                                  // );
                                },
                                child: Container(
                                    height: 50,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        color: DarkGreen,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(color: DarkGreen)
                                    ),
                                    child: Center(child: Text('WATCH MATCH', style: TextStyle(fontSize: 15, color: Colors.white,fontWeight: FontWeight.w600),))
                                ),
                              ),

                              InkWell(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Match_Result()),
                                  );
                                },
                                child: Container(
                                    height: 50,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        color: DarkGreen,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(color: DarkGreen)
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(width: 5,),
                                        Icon(Icons.monetization_on , color: Colors.amber,),
                                        Text('10', style: TextStyle(fontSize: 15, color: Colors.white,fontWeight: FontWeight.w600),),
                                        SizedBox(width: 8,),
                                        Text('Join', style: TextStyle(fontSize: 15, color: Colors.white,fontWeight: FontWeight.w600),),
                                        SizedBox(width: 8,),
                                        Icon(Icons.arrow_forward_ios , color: Colors.white,),
                                      ],
                                    )
                                ),
                              ),

                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                );


              }
          ),
        )


    );
  }
}
