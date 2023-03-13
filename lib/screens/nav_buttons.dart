import 'package:developer_test/shared/exports.dart';
import 'package:flutter/material.dart';

class NavButtons extends StatefulWidget {
  const NavButtons({super.key});

  @override
  State<NavButtons> createState() => _NavButtonsState();
}

class _NavButtonsState extends State<NavButtons> {
  int _index = 0; //New

  void _onTapped(int index) {
    setState(() {
      _index = index;
    });
  }

  static const List<Widget> _pages = <Widget>[
    SettingsPage(),
    ScreenTwo(),
    SearchPage(),
    ScreenFour(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_index),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Palette.white,
        iconSize: 25,
        currentIndex: _index, //New
        onTap: _onTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.square,
              color: Colors.black,
            ),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.add,
              color: Colors.black,
            ),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.search,
              color: Colors.black,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.person,
              color: Colors.black,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
