import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:tournament_app/API.dart';
import 'package:tournament_app/Constant.dart';
import 'package:tournament_app/Screens/GameDetail.dart';
import 'package:tournament_app/Widget/text.dart';

import 'LISTS/upcomingGameList.dart';

class Upcoming extends StatefulWidget {
  @override
  _UpcomingState createState() => _UpcomingState();
}

class _UpcomingState extends State<Upcoming> {
  @override
  void initState() {
    // TODO: implement initState
    API.getmatches();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: FutureBuilder(
          future: API.getmatches(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Container(
                height: MediaQuery.of(context).size.height / 1.09,
                child: ListView.builder(
                    physics: ClampingScrollPhysics(),
                    itemCount: snapshot.data.getMatches.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1.1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 200,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.network(
                                    snapshot.data.getMatches[index].banner,
                                    fit: BoxFit.cover),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 20),
                                child: Row(
                                  children: [
                                    Container(
                                        height: 40,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            color: DarkGreen,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border:
                                                Border.all(color: DarkGreen)),
                                        child: Center(
                                            child: Text(
                                          snapshot.data.getMatches[index].team,
                                          style: TextStyle(color: Colors.white),
                                        ))),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                        height: 40,
                                        width: 70,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border:
                                                Border.all(color: DarkGreen)),
                                        child: Center(
                                            child: Text(snapshot
                                                .data.getMatches[index].map))),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                        height: 40,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border:
                                                Border.all(color: DarkGreen)),
                                        child: Center(
                                            child: Text(snapshot
                                                .data.getMatches[index].mode))),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 10),
                                child: Row(
                                  children: [
                                    Text(
                                      snapshot.data.getMatches[index].matchName,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Match # " +
                                          snapshot.data.getMatches[index].id
                                              .toString(),
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                indent: 20,
                                endIndent: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 30, top: 10, bottom: 10, right: 30),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      children: [
                                        Text(upcominggameList[index].date),
                                        Text(snapshot.data.getMatches[index]
                                            .matchSchedule),
                                      ],
                                    ),
                                    VerticalDivider(
                                      color: Colors.black,
                                    ),
                                    Column(
                                      children: [
                                        Text('PRIZE POOL'),
                                        Text(snapshot
                                            .data.getMatches[index].prizePool),
                                      ],
                                    ),
                                    VerticalDivider(
                                      color: Colors.black,
                                    ),
                                    Column(
                                      children: [
                                        Text('PER KILL'),
                                        Text(snapshot
                                            .data.getMatches[index].prizePool),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                endIndent: 20,
                                indent: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, bottom: 10),
                                child: Text(
                                  upcominggameList[index].num.toString() +
                                      '/100',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, bottom: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width /
                                          2.7,
                                      child: StepProgressIndicator(
                                        totalSteps: 100,
                                        currentStep:
                                            upcominggameList[index].num,
                                        size: 8,
                                        padding: 0,
                                        selectedColor: DarkGreen,
                                        unselectedColor: Colors.yellow,
                                        roundedEdges: Radius.circular(10),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        int userid = snapshot.data.getMatches[index].id;
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  GameDetail(userid)),
                                        );
                                      },
                                      child: Container(
                                          height: 50,
                                          width: 120,
                                          decoration: BoxDecoration(
                                              color: DarkGreen,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border:
                                                  Border.all(color: DarkGreen)),
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Icon(
                                                Icons.monetization_on,
                                                color: Colors.amber,
                                              ),
                                              Text(
                                                '10',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text(
                                                'Join',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Icon(
                                                Icons.arrow_forward_ios,
                                                color: Colors.white,
                                              ),
                                            ],
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return Shimmer.fromColors(
                baseColor: Colors.grey[300],
                highlightColor: Colors.white,
                child: Container(
                  color: Colors.black,
                  height: MediaQuery.of(context).size.height,
                ));
          }),
    ));
  }
}
