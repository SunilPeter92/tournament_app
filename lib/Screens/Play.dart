import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tournament_app/API.dart';
import 'package:tournament_app/Screens/Game.dart';
import 'package:tournament_app/Screens/GameDescription.dart';
import 'package:tournament_app/Screens/GameDetail.dart';
import 'package:tournament_app/Screens/LISTS/GameList.dart';
import 'package:tournament_app/Screens/LISTS/PopularGames.dart';
import 'package:tournament_app/Screens/Models/GameModel.dart';
import 'package:tournament_app/Widget/text.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class PlayGames extends StatefulWidget {
  @override
  _PlayGamesState createState() => _PlayGamesState();
}

class _PlayGamesState extends State<PlayGames> {




  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'PLAY',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              child: Row(
                children: [
                  Icon(
                    Icons.share_outlined,
                    color: Colors.yellow,
                  ),
                  Container(
                    height: 35,
                    width: 65,
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.monetization_on,
                          color: Colors.amber,
                        ),
                        Text(
                          "50",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                height: 300,
                // width: 500,
                alignment: Alignment.center,
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => Game()),
                            // );
                          },
                          child: Container(
                            height: 280,
                            width: MediaQuery.of(context).size.width / 2,
                            decoration: BoxDecoration(
                              color: Colors.black26,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage(gameList[index].image),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ));
                  },

                  itemHeight: 300,
                  itemWidth: 300,
                  itemCount: gameList.length,
                  viewportFraction: 0.7,
                  scale: 0.9,
                  // control:SwiperControl(),
                ),
              ),

              //  Container(
              //    height: 300,
              //      child:ListView.builder(
              //          padding: const EdgeInsets.all(8),
              //          itemCount: gameList.length,
              //          scrollDirection: Axis.horizontal,
              //          itemBuilder: (BuildContext context, int index) {
              //            return Padding(
              //              padding: const EdgeInsets.all(8.0),
              //              child: InkWell(
              //                onTap:(){
              //                  Navigator.push(
              //                    context,
              //                    MaterialPageRoute(builder: (context) => Game()),
              //                  );
              //                } ,
              //                child: Container(
              //                  height: 280,
              //                  width: MediaQuery.of(context).size.width/2,
              //                  decoration: BoxDecoration(
              //                    color: Colors.black26,
              //                    borderRadius: BorderRadius.circular(20),
              //                    // image: DecorationImage(
              //                    //   image: AssetImage(earnList[index].image),
              //                    //   fit: BoxFit.cover,
              //                    // ),
              //                  ),
              //
              //            ),
              //              )
              //            );
              //
              //
              //          }
              //      )
              //  ),
              // SizedBox(height: 10,),
              Texts(
                data: 'Popular Games',
              ),
              SizedBox(
                height: 10,
              ),
              FutureBuilder<Games>(
                  future: API.getgames(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        height: MediaQuery.of(context).size.height / 2,
                        child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithMaxCrossAxisExtent(
                                    maxCrossAxisExtent: 200,
                                    childAspectRatio: 1 / 1.5,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10),
                            itemCount: snapshot.data.getGames.length,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Game()),
                                      );
                                    },
                                    child: Container(
                                      height: 350,
                                      width: MediaQuery.of(context).size.width /
                                          1.2,
                                      decoration: BoxDecoration(
                                        color: Colors.black26,
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                          image: NetworkImage(snapshot
                                              .data.getGames[index].gameImg),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ));
                            }),
                      );
                    } else if (snapshot.hasError) {
                      return Text("${snapshot.error}");
                    }

                    return CircularProgressIndicator();
                  }),

              // Container(
              //     padding: EdgeInsets.only(left: 10, right: 10),
              //     height: MediaQuery.of(context).size.height / 2,
              //     child: GridView.builder(
              //         gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              //             maxCrossAxisExtent: 200,
              //             childAspectRatio: 1 / 1.5,
              //             crossAxisSpacing: 10,
              //             mainAxisSpacing: 10),
              //         itemCount: .length,
              //         scrollDirection: Axis.vertical,
              //         itemBuilder: (BuildContext context, int index) {
              //           return Padding(
              //               padding: const EdgeInsets.all(8.0),
              //               child: InkWell(
              //                 onTap: (){
              //                   Navigator.push(
              //                     context,
              //                     MaterialPageRoute(builder: (context) => Game()),
              //                   );
              //                 },
              //                 child: Container(
              //                   height: 350,
              //                   width: MediaQuery.of(context).size.width / 1.2,
              //                   decoration: BoxDecoration(
              //                     color: Colors.black26,
              //                     borderRadius: BorderRadius.circular(20),
              //                     image: DecorationImage(
              //                       image: AssetImage([index].image),
              //                       fit: BoxFit.cover,
              //                     ),
              //                   ),
              //                 ),
              //               ));
              //         })),
            ],
          ),
        ),
      ),
    );
  }
}
