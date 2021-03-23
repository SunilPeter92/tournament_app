import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Constant.dart';

class Customer_Support extends StatefulWidget {
  @override
  _Customer_SupportState createState() => _Customer_SupportState();
}

class _Customer_SupportState extends State<Customer_Support> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        leading: Icon(Icons.arrow_back),
        title: Text(
          'Customer Support',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 30, right: 30 , top: 40),
        child: Column(
          children: [
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Row(
                children: [
                  Text('Address :'),
                  Text('Surat, Gujrat(India)'),
                ],
              ),
            ),
            Divider(),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width / 1.1,
              child:  Row(
                children: [
                  Text('Phone:'),
                  Text('+ 912612554600'),
                  Spacer(),
                  Icon(Icons.phone, color: DarkGreen,),
                  SizedBox(width: 20,),
                  FaIcon(FontAwesomeIcons.whatsapp, color: DarkGreen,),
                ],
              ),
            ),
            Divider(),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Row(
                children: [
                  Text('Email :'),
                  Text('xyz@gmail.com'),
                  Spacer(),
                  Icon(Icons.mail, color: DarkGreen,),
                ],
              ),
            ),
            Divider(),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width / 1.1,
              child:  Row(
                children: [
                  Text('Street :'),
                  Text('ABC Street , XYZ Area'),
                ],
              ),
            ),
            Divider(),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width / 1.1,
              child:  Row(
                children: [
                  Text('Time :'),
                  Text('Mon to Sat 11 AM to 7 PM'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
