import 'package:flutter/material.dart';

import 'constants.dart';

class PlayerButton extends StatelessWidget {
  PlayerButton({required this.title, required this.tier});

  final title;
  final tier;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kBoxShadow,
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(15.0),
      child: SizedBox(
        width: double.infinity,
        height: 70.0,
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(kGreenColor),
          ),
          child: Text(
            title,
            style: kHomeTitle,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/tier1');
          },
        ),
      ),
    );
  }
}
