import 'package:disgo/bottom_button.dart';
import 'package:disgo/constants.dart';
import 'package:flutter/material.dart';

class Tier1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kGreenColor,
        title: Text('DiscGo: Fantasy Disc Golf'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Container(
                child: Text('tier 1'),
              ),
            ],
          ),
          Expanded(
            child: Container(
              alignment: Alignment.bottomCenter,
              child: BottomButton(onTap: () {}, buttonTitle: 'SAVE'),
            ),
          )
        ],
      ),
    );
  }
}
