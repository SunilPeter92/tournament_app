import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductList {

  var image;
  String name;
  int price1;
  int price2;

  ProductList({ this.image , this.name , this.price1 , this.price2});
}

List<ProductList> productList = [

  ProductList(
    image: 'assets/Screen5Card.png',
    name: ("T-shirt") ,
    price1: 400,
    price2: 299,
  ),
  ProductList(
    image: 'assets/Screen3.png',
    name: ("T-shirt") ,
    price1: 400,
    price2: 299,
  ),




];