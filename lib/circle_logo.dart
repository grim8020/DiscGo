import 'package:flutter/material.dart';

var circleLogo = CircleAvatar(
  radius: 100,
  backgroundColor: Colors.green,
  child: Padding(
    padding: const EdgeInsets.all(10), // Border radius
    child: ClipOval(
      child: Image.asset('images/DiscGo.png'),
    ),
  ),
);
