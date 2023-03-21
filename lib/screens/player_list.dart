import 'package:disgo/appBar.dart';
import 'package:disgo/components.dart';
import 'package:flutter/material.dart';
import 'package:disgo/bottom_nav_back_bar.dart';

class PlayerList extends StatefulWidget {
  @override
  _PlayerListState createState() => _PlayerListState();
}

class _PlayerListState extends State<PlayerList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBackBar(
          onPressed: () {
            Navigator.pop(context);
          },
          context: context),
      body: Container(
        color: Colors.green,
        child: SafeArea(
          child: Container(
            child: Column(
              children: [
                kAppBar(
                  onPressedSearch: () {
                    Navigator.pushNamed(context, '/searchPage');
                  },
                  onPressedHome: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  onPressedProfile: () {
                    Navigator.pushNamed(context, '/profile');
                  },
                ),
                SizedBox(height: 15),
                Text('Player List Page'),
                PlayerListView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
