import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tournament_app/Constant.dart';
import 'package:tournament_app/Widget/text.dart';

class LotteryDescrption extends StatefulWidget {
  @override
  _LotteryDescrptionState createState() => _LotteryDescrptionState();
}

class _LotteryDescrptionState extends State<LotteryDescrption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Texts(data: '1000 diamonds Lottery #1'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 20),
                  child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.access_time),
                          SizedBox(width: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text( 'Result On'),
                              Text('2021-02-18 23:59:32'),
                            ],
                          ),
                        ],
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 20),
                  child: Container(
                      child: Row(
                        children: [
                          FaIcon(FontAwesomeIcons.trophy),
                          SizedBox(width: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text( 'Play for'),
                              Text('1000'),
                            ],
                          ),
                        ],
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 20),
                  child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.folder_open),
                          SizedBox(width: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text( 'Fees'),
                              Text('5'),
                            ],
                          ),
                        ],
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Texts(data: 'About Lottery'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text('Guh'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
