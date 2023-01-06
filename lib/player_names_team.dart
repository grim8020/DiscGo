import 'package:flutter/material.dart';

class PlayerNamesTeam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('Player Name 1'),
        Text('Player Name 2'),
      ],
    );
  }
}
