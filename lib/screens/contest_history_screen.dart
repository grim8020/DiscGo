import 'package:disgo/bottom_nav_back_bar.dart';
import 'package:flutter/material.dart';

class ContestHistoryPage extends StatelessWidget {
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
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Card(
                    child: Text('Past event'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
