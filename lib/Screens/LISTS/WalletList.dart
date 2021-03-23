import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WalletList {
  String text;
  String text1;
  var date;
  var time;
  int price;

  WalletList({this.text , this.text1 , this.date , this.time , this.price });
}

List<WalletList> walletList = [
  WalletList(

    text: ('DEBIT'),
    text1: ('MATCH JOINED # 1'),
    date: ('01-02-2021'),
    time: ('12:00:00'),
    price: (50),
  ),
  WalletList(
    text: ('DEBIT'),
    text1: ('MATCH JOINED # 1'),
    date: ('01-02-2021'),
    time: ('12:00:00'),
    price: (50),
  ),
  WalletList(
    text: ('DEBIT'),
    text1: ('MATCH JOINED # 1'),
    date: ('01-02-2021'),
    time: ('12:00:00'),
    price: (50),
  ),
  WalletList(
    text: ('DEBIT'),
    text1: ('MATCH JOINED # 1'),
    date: ('01-02-2021'),
    time: ('12:00:00'),
    price: (50),
  ),

];