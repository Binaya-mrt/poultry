import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'views/birdDetails.dart';
import 'views/transcation.dart';
import 'views/userDetails.dart';
import 'views/addingScreen.dart';
import 'views/homeScreen.dart';
import 'package:intl/intl.dart';

class ButtomBar extends StatefulWidget {
  const ButtomBar({Key? key}) : super(key: key);

  @override
  _ButtomBarState createState() => _ButtomBarState();
}

class _ButtomBarState extends State<ButtomBar> {
  int _currentIndex = 0;
  final Tabs = [
    HomeScreen(),
    BirdDetails(),
    AddingScreen(),
    Transcations(),
    UsersAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Khata Pata',
          style: TextStyle(fontSize: 30),
        ),
        actions: [
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: Text(
                  DateFormat.yMMMd().format(DateTime.now()).toString(),
                  style: TextStyle(fontSize: 20),
                ),
              ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 20,
        selectedItemColor: Colors.teal,
        unselectedFontSize: 15,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            title: Text('Home'),
            icon: FaIcon(FontAwesomeIcons.home),
          ),
          BottomNavigationBarItem(
            title: Text('Folks'),
            icon: Icon(FontAwesomeIcons.crow),
          ),
          BottomNavigationBarItem(
            title: Text('Add'),
            icon: Icon(Icons.add),
          ),
          BottomNavigationBarItem(
            title: Text('Transcations'),
            icon: Icon(FontAwesomeIcons.receipt),
          ),
          BottomNavigationBarItem(
            title: Text('User'),
            icon: Icon(
              FontAwesomeIcons.user,
            ),
          ),
        ],
      ),
      body: Tabs[_currentIndex],
    );
  }
}
