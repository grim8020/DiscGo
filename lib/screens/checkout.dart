import 'package:disgo/appBar.dart';
import 'package:flutter/material.dart';
import 'package:disgo/bottom_nav_back_bar.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
