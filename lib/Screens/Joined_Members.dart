import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tournament_app/Screens/LISTS/JoinMemberList.dart';

class JoinedMember extends StatefulWidget {
  @override
  _JoinedMemberState createState() => _JoinedMemberState();
}

class _JoinedMemberState extends State<JoinedMember> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: SingleChildScrollView(
      child:Container(
        height: MediaQuery.of(context).size.height/2,
        child:  ListView.builder(
            physics: ClampingScrollPhysics(),
            itemCount: joinmemberList.length,
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

                      Text(joinmemberList[index].name, style: TextStyle(color: Colors.black),),
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
