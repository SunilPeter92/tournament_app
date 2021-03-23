import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:tournament_app/Constant.dart';
import 'package:tournament_app/Screens/GameDetail.dart';
import 'package:tournament_app/Screens/LISTS/LotteryOngoingList.dart';
import 'package:tournament_app/Screens/Lottery_Detail.dart';
import 'package:tournament_app/Screens/Upcominggame.dart';
import 'package:tournament_app/Widget/text.dart';

class LotterOngoing extends StatefulWidget {
  @override
  _LotterOngoingState createState() => _LotterOngoingState();
}

class _LotterOngoingState extends State<LotterOngoing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        height: MediaQuery.of(context).size.height/1.09,
        child:  ListView.builder(
            physics: ClampingScrollPhysics(),
            itemCount: lottreyongoingList.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(3.0),
                child: Card(
                  child: Container(
                    height: 350,
                    padding: EdgeInsets.only(left: 10,right: 10),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20,),
                        Stack(
                           children: [
                             Container(
                               height: 200,
                               decoration: BoxDecoration(
                                   image: DecorationImage(
                                     image: AssetImage(lottreyongoingList[index].image),
                                     fit: BoxFit.cover,
                                   ),
                                   borderRadius: BorderRadius.circular(10)
                               ),
                             ),
                             Positioned(
                               right: 0 ,
                               top: 0,
                               child: Padding(
                                 padding: const EdgeInsets.only(top: 10,right: 10),
                                 child: Container(
                                   height: 35,
                                   width: 70,
                                   decoration: BoxDecoration(
                                       color: Colors.grey[100],
                                       borderRadius: BorderRadius.circular(5)),
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment.center,
                                     children: [
                                       Icon(
                                         Icons.monetization_on,
                                         color: Colors.amber,
                                       ),
                                       Text(
                                         lottreyongoingList[index].prize.toString(),
                                         style: TextStyle(
                                             color: Colors.black,
                                             fontSize: 16,
                                             fontWeight: FontWeight.w700),
                                       )
                                     ],
                                   ),
                                 ),
                               ),
                             ),
                           ],
                        ),


                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 10),
                          child: Texts(data :lottreyongoingList[index].name),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 10),
                          child: Row(
                            children: [
                              Text(lottreyongoingList[index].date),
                              Text(lottreyongoingList[index].time),
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 10),
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(lottreyongoingList[index].num.toString() + '/100', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                                  Container(
                                    width: MediaQuery.of(context).size.width/2.5,
                                    child: StepProgressIndicator(
                                      totalSteps: 100,
                                      currentStep: lottreyongoingList[index].num,
                                      size: 8,
                                      padding: 0,
                                      selectedColor: DarkGreen,
                                      unselectedColor: Colors.yellow,
                                      roundedEdges: Radius.circular(10),

                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 5,),
                              InkWell(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => LotteryDetail()),
                                 );
                                },
                                child: Container(
                                    height: 40,
                                    width: 155,
                                    decoration: BoxDecoration(
                                        color: DarkGreen,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(color: DarkGreen)
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(width: 5,),
                                        Icon(Icons.monetization_on , color: Colors.amber,),
                                        Text('10', style: TextStyle(fontSize: 13, color: Colors.white,fontWeight: FontWeight.w600),),
                                        SizedBox(width: 3,),
                                        Text('REGISTERED', style: TextStyle(fontSize: 13, color: Colors.white,fontWeight: FontWeight.w600),),
                                        SizedBox(width: 3,),
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
                ),
              );


            }
        ),
      )

    );
  }
}
