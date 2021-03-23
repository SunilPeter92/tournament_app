import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GameList {

  var image;

  GameList({ this.image});
}

List<GameList> gameList = [
  GameList(
      image: 'assets/Screen3.png',
  ),
  GameList(
      image: 'assets/Screen1.png',
  ),
  GameList(
      image: 'assets/Screen2.png',
  ),
  GameList(
      image: 'assets/Screen6.png',
  ),

];