import 'package:flutter/material.dart';
import 'package:tournament_app/Screens/LISTS/LotteryJoinMemberList.dart';

class LotteryJoinMember extends StatefulWidget {
  @override
  _LotteryJoinMemberState createState() => _LotteryJoinMemberState();
}

class _LotteryJoinMemberState extends State<LotteryJoinMember> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child:Container(
              height: MediaQuery.of(context).size.height/2,
              child:  ListView.builder(
                  physics: ClampingScrollPhysics(),
                  itemCount: lotteryjoinmemberList.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width/1.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),

                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 5,),

                            Text(lotteryjoinmemberList[index].name, style: TextStyle(color: Colors.black),),
                            Divider(),
                          ],
                        )
                    );


                  }
              ),
            )
        ));
  }
}
