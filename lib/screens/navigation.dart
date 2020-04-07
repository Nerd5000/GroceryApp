import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:groceryapp/screens/cart.dart';
import 'package:groceryapp/screens/home.dart';
import 'package:groceryapp/screens/liked.dart';

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _index = 0;
  List _screens = [Home(), Cart(), Liked()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens.elementAt(_index),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Color(0xffEE4646)),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/butter.jpg'),
                radius: 50,
              ),
              accountName: Text('Muhammed'),
              accountEmail: Text('ma.prog.zero@gmail.com'),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.home),
            title: Text(' '),
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.shoppingCart),
            title: Text(' '),
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.heart),
            title: Text(' '),
          ),
        ],
        currentIndex: _index,
        selectedItemColor: Color(0xffE26104),
        onTap: (index) {
          setState(() => _index = index);
        },
      ),
    );
  }
}
