import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap, required this.buttonTitle});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/lineupBuilder');
      },
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        color: Colors.green,
        //padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: 70,
      ),
    );
  }
}
