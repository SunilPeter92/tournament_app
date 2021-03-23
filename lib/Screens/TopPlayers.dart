import 'package:flutter/material.dart';

class TopPlayers extends StatefulWidget {
  @override
  _TopPlayersState createState() => _TopPlayersState();
}

class _TopPlayersState extends State<TopPlayers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        leading: Icon(Icons.arrow_back),
        title: Text(
          'Top Players',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
              child: Row(
                children: [
                  Container(
                      height: 100,
                      width: 100,
                      child: Image.asset(
                        'assets/Screen4Card.png',
                        fit: BoxFit.fill,
                      ))
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
              child: Column(
                children: [
                  Container(
                    height: 40,

                    decoration: BoxDecoration(
                        color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                      )
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Garena Free Fire:',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'Winterlands',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 10, left: 10),
                    height: 40,
                    color: Colors.black,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'User Name',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'Winning',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width:150,
                          child: Text(
                        'demouser',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      )),

                      Row(

                        children: [
                          Icon(Icons.monetization_on , color: Colors.amber,),
                          Text(
                            '0',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width:150,
                          child: Text(
                            'Raju24077',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          )),

                      Row(

                        children: [
                          Icon(Icons.monetization_on , color: Colors.amber,),
                          Text(
                            '0',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width:150,
                          child: Text(
                            'Ram',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          )),

                      Row(

                        children: [
                          Icon(Icons.monetization_on , color: Colors.amber,),
                          Text(
                            '0',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
