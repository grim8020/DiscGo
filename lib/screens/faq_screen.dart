import 'package:disgo/appBar.dart';
import 'package:disgo/bottom_nav_back_bar.dart';
import 'package:flutter/material.dart';

class FAQPage extends StatefulWidget {
  @override
  _FAQPage createState() => _FAQPage();
}

class _FAQPage extends State<FAQPage> {
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
                Text('FAQs'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
