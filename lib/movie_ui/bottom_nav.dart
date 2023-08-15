import 'package:flutter/material.dart';
import 'package:flutter_may/movie_ui/saved.dart';
import 'package:flutter_may/movie_ui/search.dart';

import 'me.dart';

/// Flutter code sample for [BottomNavigationBar].

void main() => runApp(const BottomNavigationBarExampleApp());

class BottomNavigationBarExampleApp extends StatelessWidget {
  const BottomNavigationBarExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavigationBarExample(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;

  static  List<Widget> _widgetOptions = <Widget>[
    movie_app(),
    movie_app(),
    saved(),
    saved(),
    me_ui(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        height: 60,
        color: Colors.grey[700],
        child: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.grey[900],
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          selectedLabelStyle: TextStyle(color: Colors.grey),
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,size: 18,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: "Search"
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.bookmark,
                ),
                label: "Saved"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.download_outlined,
                ),
                label: 'Downloads'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: 'Me'),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,

        ),
      ),
    );
  }
}
