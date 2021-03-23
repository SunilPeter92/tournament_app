import 'package:flutter/material.dart';

class AppTutorial extends StatefulWidget {
  @override
  _AppTutorialState createState() => _AppTutorialState();
}

class _AppTutorialState extends State<AppTutorial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        leading: Icon(Icons.arrow_back),
        title: Text(
          'APP Tutorial',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: Column(
          children: [

          ],
        ),
      ),
    );

  }
}
