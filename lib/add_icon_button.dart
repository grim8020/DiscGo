import 'package:flutter/material.dart';

class AddIcon extends StatelessWidget {
  const AddIcon({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.add_circle_outline,
        size: 50,
      ),
      onPressed: onPressed,
    );
  }
}

class TierNames extends StatelessWidget {
  const TierNames(
      {super.key, required this.tierName,
      required this.tierValue1,
      required this.tierValue2});

  final String tierName;
  final int tierValue1;
  final int tierValue2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: <Widget>[
            // Stroked text as border.
            Text(
              tierName,
              style: TextStyle(
                fontSize: 40,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 4
                  ..color = Colors.black,
              ),
            ),
            // Solid text as fill.
            Text(
              tierName,
              style: TextStyle(
                fontSize: 40,
                color: Colors.grey[300],
              ),
            ),
          ],
        ),
        // Text(
        //   tierName,
        //   style: Theme.of(context)
        //       .textTheme
        //       .headlineLarge
        //       ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        // ),
        Text(
          '$tierValue1 to $tierValue2',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
        ),
      ],
    );
  }
}
