import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tournament_app/Screens/LISTS/JoinMemberList.dart';
import 'package:tournament_app/API.dart';
import 'package:shimmer/shimmer.dart';

class JoinedMember extends StatefulWidget {
  int userid;
  JoinedMember(int useid) {
    this.userid = useid;
  }
  @override
  _JoinedMemberState createState() => _JoinedMemberState();
}

class _JoinedMemberState extends State<JoinedMember> {
  @override
  void initState() {
    // TODO: implement initState
    API.ongoingjoinmatches(widget.userid.toString());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  FutureBuilder(
                      future: API.ongoingjoinmatches((widget.userid.toString())),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Container(
                            height: MediaQuery.of(context).size.height / 2,
                            child: ListView.builder(
                                physics: ClampingScrollPhysics(),
                                itemCount: snapshot.data.datas.length,
                                scrollDirection: Axis.vertical,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                      height: 40,
                                      width: MediaQuery.of(context).size.width / 1.1,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            snapshot.data.datas[index].uname,
                                            style: TextStyle(color: Colors.black),
                                          ),
                                          Divider(),
                                        ],
                                      ));
                                }),
                          );
                        } else if (snapshot.hasError) {
                          return Text("${snapshot.error}");
                        }
                        return Shimmer.fromColors(
                            baseColor: Colors.grey[300],
                            highlightColor: Colors.white,
                            child: Container(
                              color: Colors.black,
                              height: MediaQuery.of(context).size.height,
                            ));
                      }),
                ],
              ),
        )));
  }
}
