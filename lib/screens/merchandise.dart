import 'package:disgo/constants.dart';
import 'package:flutter/material.dart';

import '../merchandise_card_size_color.dart';

class Merchandise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavBackBar(
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //     context: context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              MerchCard(),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/checkout');
                  },
                  style: kLargeButtonStyle,
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
                      Text('Checkout', style: kLargeButtonTextStyle),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
