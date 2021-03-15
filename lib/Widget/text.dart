import 'package:flutter/material.dart';

class Texts extends StatelessWidget {
  final data;

  const Texts({Key key, this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
          color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
    );
  }
}
