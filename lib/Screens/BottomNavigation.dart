import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tournament_app/API.dart';
import 'package:tournament_app/Screens/Account.dart';
import 'package:tournament_app/Screens/Earn.dart';
import 'package:tournament_app/Screens/Play.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int _selectedIndex = 1;
 List<Widget> _children = [
   Earn(),
   PlayGames(),
   Account(),

  ];
  setBool() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return String
    prefs.setBool('isLoggedIn', false);
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    setBool();
    API.getUsers();


    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey ,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            label: 'Earn',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.gamepad),
            label: 'Play',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),

        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
