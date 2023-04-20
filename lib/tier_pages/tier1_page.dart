import 'package:disgo/players.dart';
import 'package:flutter/material.dart';

class Tier1Page extends StatelessWidget {
  const Tier1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tier 1 Players'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.help)),
          )
        ],
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
