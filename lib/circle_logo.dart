import 'package:flutter/material.dart';

var circleLogo = CircleAvatar(
  radius: 150,
  backgroundColor: Colors.green,
  child: Padding(
    padding: const EdgeInsets.all(15), // Border radius
    child: ClipOval(
      child: Image.asset('images/DiscGo.png'),
    ),
  ),
);
