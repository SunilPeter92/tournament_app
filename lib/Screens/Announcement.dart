import 'package:flutter/material.dart';

class Announcement extends StatefulWidget {
  @override
  _AnnouncementState createState() => _AnnouncementState();
}

class _AnnouncementState extends State<Announcement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        leading: Icon(Icons.arrow_back),
        title: Text(
          'Announcement',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 10 , right: 10),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Card(
              child: Container(
                padding:EdgeInsets.only(left: 10 , right: 10 , top: 10) ,
                height: 40,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Text("Welcome to the Battlemania"),
              ),
            ),
            Card(
              child: Container(
                padding:EdgeInsets.only(left: 10 , right: 10 , top: 10) ,
                height: 40,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Text("lll"),
              ),
            ),
            Card(
              child: Container(
                padding:EdgeInsets.only(left: 10 , right: 10 , top: 10) ,
                height: 40,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Text("aaaa"),
              ),
            ),
            Card(
              child: Container(
                padding:EdgeInsets.only(left: 10 , right: 10 , top: 10) ,
                height: 40,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Text("himhu"),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
