import 'package:disgo/player_button.dart';
import 'package:disgo/tier_pages/tier1_page.dart';
import 'package:disgo/tier_pages/tier2_page.dart';
import 'package:disgo/tier_pages/tier3_page.dart';
import 'package:disgo/tier_pages/tier4_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bottom_button.dart';
import 'constants.dart';
import 'player_names_team.dart';

class PlayerFieldPage extends StatelessWidget {
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
          Container(
            padding: EdgeInsets.all(20.0),
            child: Center(
              child: Text(
                'Pick your player',
                style: TextStyle(
                    color: kGreenColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
            ),
          ),
          PlayerButton(
            title: 'Tier 1',
            tier: Tier1Page(),
          ),
          PlayerNamesTeam(),
          PlayerButton(
            title: 'Tier 2',
            tier: Tier2Page(),
          ),
          PlayerNamesTeam(),
          PlayerButton(
            title: 'Tier 3',
            tier: Tier3Page(),
          ),
          PlayerNamesTeam(),
          PlayerButton(
            title: 'Tier 4',
            tier: Tier4Page(),
          ),
          PlayerNamesTeam(),
          Expanded(
            child: Container(
              height: 70.0,
              alignment: Alignment.bottomCenter,
              child: BottomButton(onTap: () {}, buttonTitle: 'Save'),
            ),
          ),
        ],
      ),
    );
  }
}
