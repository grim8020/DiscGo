import 'package:disgo/players.dart';
import 'package:flutter/material.dart';

class Tier1Page extends StatelessWidget {
  const Tier1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tier 1 Players'),
      ),
      // bottomNavigationBar: BottomNavBackBar(
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //     context: context),
      body: SafeArea(child: Data()),
    );
  }
}
