import 'package:disgo/add_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:disgo/bottom_nav_back_bar.dart';
import 'package:disgo/components.dart';

class LineupBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBackBar(
          onPressed: () {
            Navigator.pop(context);
          },
          context: context),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/field.png'), fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              // kAppBar(
              //   onPressedSearch: () {
              //     Navigator.pushNamed(context, '/searchPage');
              //   },
              //   onPressedHome: () {
              //     Navigator.pushNamed(context, '/home');
              //   },
              //   onPressedProfile: () {
              //     Navigator.pushNamed(context, '/profile');
              //   },
              // ),
              Positioned(
                  top: 85,
                  left: 50,
                  child: TierNames(
                    tierName: 'Tier 1',
                    tierValue1: 1035,
                    tierValue2: 1055,
                  ) //CircularAvatar
                  ),
              //Tier 1 A
              Positioned(
                  top: 65,
                  right: 125,
                  child: AddIcon(onPressed: () {}) //CircularAvatar
                  ),
              //Tier 1 B
              Positioned(
                  top: 175,
                  right: 140,
                  child: AddIcon(onPressed: () {}) //CircularAvatar
                  ),
              Positioned(
                  top: 350,
                  right: 50,
                  child: TierNames(
                    tierName: 'Tier 2',
                    tierValue1: 1021,
                    tierValue2: 1034,
                  ) //CircularAvatar
                  ),
              //Tier 2 A
              Positioned(
                  top: 300,
                  left: 75,
                  child: AddIcon(onPressed: () {}) //CircularAvatar
                  ),
              //Tier 2 B
              Positioned(
                  top: 425,
                  left: 115,
                  child: AddIcon(onPressed: () {}) //CircularAvatar
                  ),
              Positioned(
                  bottom: 120,
                  left: 50,
                  child: TierNames(
                    tierName: 'Tier 3',
                    tierValue1: 985,
                    tierValue2: 1020,
                  ) //CircularAvatar
                  ),
              //Tier 3 A
              Positioned(
                  bottom: 150,
                  left: 175,
                  child: AddIcon(onPressed: () {}) //CircularAvatar
                  ),
              //Tier 3 B
              Positioned(
                  bottom: 190,
                  left: 240,
                  child: AddIcon(onPressed: () {}) //CircularAvatar
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
