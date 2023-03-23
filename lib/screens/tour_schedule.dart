import 'package:disgo/appBar.dart';
import 'package:flutter/material.dart';
import 'package:disgo/bottom_nav_back_bar.dart';

class TourSchedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBackBar(
          onPressed: () {
            Navigator.pop(context);
          },
          context: context),
      body: Container(
        child: SafeArea(
          child: kAppBar(onPressedSearch: () {
            Navigator.pushNamed(context, '/searchPage');
          }, onPressedHome: () {
            Navigator.pushNamed(context, '/home');
          }, onPressedProfile: () {
            Navigator.pushNamed(context, '/profile');
          }),
        ),
      ),
    );
  }
}
