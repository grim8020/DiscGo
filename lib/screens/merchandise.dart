import 'package:disgo/appBar.dart';
import 'package:disgo/merchandise_card_size_color.dart';
import 'package:flutter/material.dart';
import 'package:disgo/bottom_nav_back_bar.dart';

class Merchandise extends StatelessWidget {
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
                Text('Merchandise'),
                SizedBox(
                  height: 30,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MerchandiseCardSizeColor(
                            merchImage: 'images/white_t.png',
                            merchName: 'DiscGo Large Logo T-Shirt',
                            merchPrice: '19.99',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MerchandiseCardSizeColor(
                              merchImage:
                                  'https://skogmarks.b-cdn.net/5545-medium_default/garphyttan-t-shirt-long-sleeve-green.jpg',
                              merchName: 'Disco Long Sleeve T-Shirt',
                              merchPrice: '23.00'),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
