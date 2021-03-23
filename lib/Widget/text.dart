import 'package:flutter/material.dart';

class Texts extends StatelessWidget {
  final data;

  const Texts({Key key, this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
          color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
    );
  }
}


class TextGrey extends StatelessWidget {
  final data;

  const TextGrey({Key key, this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
          color: Colors.grey[500], fontSize: 15, fontWeight: FontWeight.bold),
    );
  }
}