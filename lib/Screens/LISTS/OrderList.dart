import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderList {

  var image;
  String orderno;
  int price;
  var orderdate;
  String status;



  OrderList({ this.image , this.orderno , this.price , this.orderdate , this.status });
}

List<OrderList> orderList = [
  OrderList(
    image: 'assets/Screen5.png',
    orderno: ("ORD00005") ,
    price: 300,
    orderdate: 'March 17 2021',
    status: ('Hold'),
  ),
  OrderList(
    image: 'assets/Screen3.png',
    orderno: ("ORD00005") ,
    price: 300,
    orderdate: 'March 17 2021',
    status: ('Hold'),
  ),
  OrderList(
    image: 'assets/Screen1.png',
    orderno: ("ORD00005") ,
    price: 300,
    orderdate: 'March 17 2021',
    status: ('Hold'),
  ),



];