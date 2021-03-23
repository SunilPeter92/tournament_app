import 'package:flutter/material.dart';

class Terms_Conditions extends StatefulWidget {
  @override
  _Terms_ConditionsState createState() => _Terms_ConditionsState();
}

class _Terms_ConditionsState extends State<Terms_Conditions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          automaticallyImplyLeading: false,
          leading: Icon(Icons.arrow_back),
          title: Text(
            'Terms & Conditions',
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(children: [
              SizedBox(height: 20,),
              Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "BattleMania is an Ultimate Solution to all your esports Games. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printe took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.  It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style: TextStyle(fontSize: 15 , letterSpacing: 1 ),
                  )),
              SizedBox(height: 10,),
              Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "BattleMania is an Ultimate Solution to all your esports Games. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printe took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.  It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style: TextStyle(fontSize: 15 , letterSpacing: 1 ),
                  )),
              SizedBox(height: 10,),
              Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "BattleMania is an Ultimate Solution to all your esports Games. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printe took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.  It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style: TextStyle(fontSize: 15 , letterSpacing: 1 ),
                  )),
              SizedBox(height: 10,),
              Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "BattleMania is an Ultimate Solution to all your esports Games. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printe took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.  It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style: TextStyle(fontSize: 15 , letterSpacing: 1 ),
                  )),
              SizedBox(height: 10,),
              Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "BattleMania is an Ultimate Solution to all your esports Games. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printe took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.  It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style: TextStyle(fontSize: 15 , letterSpacing: 1 ),
                  )),
              SizedBox(height: 10,),
              Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "BattleMania is an Ultimate Solution to all your esports Games. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printe took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.  It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style: TextStyle(fontSize: 15 , letterSpacing: 1 ),
                  )),
              SizedBox(height: 10,),
            ]),
          ),
        ));
  }
}
