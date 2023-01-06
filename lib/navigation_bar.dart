import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_activity), label: 'TEAM'),
        ],
      ),
    );
  }
}
