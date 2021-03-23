import 'package:flutter/material.dart';

import '../Constant.dart';

class Order_Details extends StatefulWidget {
  @override
  _Order_DetailsState createState() => _Order_DetailsState();
}

class _Order_DetailsState extends State<Order_Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        leading: Icon(Icons.arrow_back),
        title: Text(
          'Order Detail',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              color: Colors.greenAccent,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/Screen5Card.png",
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Card(
                child: Container(
              padding: EdgeInsets.only(left: 5, right: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Key Tech Pubg Pocket Watch Metal Keychain',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),

                  Row(
                    children: [
                     Container(),
                      Spacer(),
                      Icon(
                        Icons.monetization_on,
                        color: Colors.amber,
                      ),
                      Text('149'),
                    ],
                  ),
                ],
              ),
            )),
            Card(
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 5, right: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Name",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'gg' ,style: TextStyle(fontSize: 13, letterSpacing: 1),
                    ),
                    Text(
                      "Address",
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'hjj' ,style: TextStyle(fontSize: 13, letterSpacing: 1),
                    ),
                    Text(
                      "Additional Information",
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'bjj' ,style: TextStyle(fontSize: 13, letterSpacing: 1),
                    ),
                    Text(
                      "Order Date",
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'February 26 2021' ,style: TextStyle(fontSize: 13, letterSpacing: 1),
                    ),
                    Text(
                      "Status",
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Delivered' ,style: TextStyle(fontSize: 13, letterSpacing: 1),
                    ),
                    Text(
                      "Track Order",
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'http://xyz.com' ,style: TextStyle(fontSize: 13, letterSpacing: 1),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
