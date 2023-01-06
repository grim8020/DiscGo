import 'package:disgo/constants.dart';
import 'package:flutter/material.dart';

class Tier2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kGreenColor,
        title: Text('DiscGo: Fantasy Disc Golf'),
      ),
      body: Container(
        child: Text('tier 2'),
      ),
    );
  }
}
