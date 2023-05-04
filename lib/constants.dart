import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var kHomeTitle = GoogleFonts.leagueSpartan(
  fontSize: 35,
  fontWeight: FontWeight.bold,
  textStyle: TextStyle(color: Colors.black, letterSpacing: .5),
);

const kGreenColor = Color(0xFF2da042);

var kButtonText = GoogleFonts.leagueSpartan(fontSize: 16);

const kBoxShadow = BoxDecoration(
  boxShadow: [
    BoxShadow(
      color: Colors.black26,
      blurRadius: 20.0,
      offset: Offset(0, 10),
    ),
  ],
);

var kLargeButtonTextStyle = GoogleFonts.leagueSpartan(fontSize: 35);

const kBottomContainerHeight = 80.0;

const kTextField = TextField(
  obscureText: true,
  decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Password',
  ),
);

const kPaddingLogin = EdgeInsets.symmetric(horizontal: 35.0);
