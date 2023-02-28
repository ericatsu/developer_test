import 'package:developer_test/shared/exports.dart';
import 'package:flutter/material.dart';

class NavPage extends StatefulWidget {
  const NavPage({super.key,});

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  int _index = 0;//New

  void _onTapped(int index) {
    setState(() {
      _index = index;
    });
  }

  // static const List<Widget> _pages = <Widget>[
  //   SettingsPage(),
  //   ScreenTwo(),
  //   ScreenThree(),
  //   ScreenFour(),
  // ];
  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
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
      );
  }
}
