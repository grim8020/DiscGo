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
                Container(
                  width: double.infinity,
                  height: 30,
                  child: Text('Merchandise'),
                  color: Colors.grey,
                  alignment: Alignment.center,
                ),
                SizedBox(
                  height: 10,
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
                          padding: const EdgeInsets.all(10.0),
                          child: MerchandiseCardSizeColor(
                            gender: 'Male',
                            merchImage: 'images/white_t.png',
                            size: 'Large',
                            merchName: 'DiscGo Front Logo T-Shirt',
                            merchPrice: '19.99',
                            color: 'White',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: MerchandiseCardSizeColor(
                            gender: 'Male',
                            merchImage: 'images/male_small.png',
                            size: 'Large',
                            merchName: 'DiscGo Small Logo T-Shirt',
                            merchPrice: '19.99',
                            color: 'Grey',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: MerchandiseCardSizeColor(
                            gender: 'Female',
                            merchImage: 'images/woman_black_t.png',
                            size: 'Large',
                            merchName: 'DiscGo Front Logo T-Shirt',
                            merchPrice: '19.99',
                            color: 'Black',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: MerchandiseCardSizeColor(
                            gender: 'Female',
                            merchImage: 'images/woman_grey_t.png',
                            size: 'Large',
                            merchName: 'DiscGo Front Logo T-Shirt',
                            merchPrice: '19.99',
                            color: 'Grey',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .8,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/checkout');
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.shopping_basket,
                            size: 30,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text('Checkout',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(fontWeight: FontWeight.bold)),
                        ],
                      ),
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
