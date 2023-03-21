import 'package:disgo/screens/search_page.dart';
import 'package:flutter/material.dart';

var kAppBar = Padding(
  padding: const EdgeInsets.symmetric(horizontal: 10.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      IconButton(
        onPressed: () {
          Navigator.pushNamed(context, '/searchPage');
        },
        icon: Icon(Icons.search),
      ),
      CircleAvatar(
        radius: 50,
        backgroundColor: Colors.green,
        child: Padding(
          padding: const EdgeInsets.all(10), // Border radius
          child: ClipOval(
            child: Image.asset(
              'images/DiscGo.png',
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.person_2),
      ),
    ],
  ),
);
