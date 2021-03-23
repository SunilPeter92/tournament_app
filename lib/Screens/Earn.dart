import 'package:flutter/material.dart';
import 'package:tournament_app/Screens/LuckDraw.dart';
import 'package:tournament_app/Screens/Product.dart';
import 'package:tournament_app/Screens/Refer&Earn.dart';
import 'package:tournament_app/Screens/Watch_Vedio.dart';
import 'package:tournament_app/Widget/text.dart';

class Earn extends StatefulWidget {
  @override
  _EarnState createState() => _EarnState();
}

class _EarnState extends State<Earn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'Earn',
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
              child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Refer_Earn()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 10),
                  child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/Cards-08.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Watch_vedio()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 10),
                  child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/Cards-09.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Products()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 10),
                  child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/Cards-10.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LuckDraw()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 10),
                  child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/Cards-11.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          )),
        ));
  }
}
