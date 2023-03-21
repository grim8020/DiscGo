import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screens/login.dart';

const kHomeTitle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

const kGreenColor = Color(0xFF2da042);

const kButtonText = TextStyle(fontWeight: FontWeight.w400, fontSize: 15.0);

const kBoxShadow = BoxDecoration(
  boxShadow: [
    BoxShadow(
      color: Colors.black26,
      blurRadius: 20.0,
      offset: Offset(0, 10),
    ),
  ],
);

const kLargeButtonTextStyle =
    TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0);

const kBottomContainerHeight = 80.0;

const kTextField = TextField(
  obscureText: true,
  decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Password',
  ),
);

const kPaddingLogin = EdgeInsets.symmetric(horizontal: 35.0);
