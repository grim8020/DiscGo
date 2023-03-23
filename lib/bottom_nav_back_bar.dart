import 'package:flutter/material.dart';

class BottomNavBackBar extends StatelessWidget {
  BottomNavBackBar({required this.onPressed, required this.context});
  final VoidCallback onPressed;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: TextButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.arrow_back,
              color: Colors.green,
              size: 15,
            ),
            SizedBox(width: 10),
            Text(
              'BACK',
              style: Theme.of(context)
                  .textTheme
                  .labelSmall
                  ?.copyWith(color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
