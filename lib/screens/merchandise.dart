import 'package:disgo/constants.dart';
import 'package:flutter/material.dart';

import '../merchandise_card_size_color.dart';

class Merchandise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.15,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Container(
          color: Colors.transparent,
          child: Image.asset(
            'images/DiscGoShopCart.png',
            height: MediaQuery.of(context).size.height * 0.15,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              MerchCard(),
              SizedBox(
                height: 5,
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
                        Icons.shopping_cart,
                        size: 20,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text('CHECKOUT', style: kLargeButtonTextStyle),
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
