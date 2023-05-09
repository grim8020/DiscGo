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

var kLargeButtonTextStyle = GoogleFonts.leagueSpartan(fontSize: 21);
var kLargeButtonStyle = ElevatedButton.styleFrom(
    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 48.0),
    elevation: 10,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
      side: BorderSide(color: Colors.green.shade700, width: 5),
    ),
    backgroundColor: Colors.green);

var kMediumLabelTextStyleBlack = GoogleFonts.leagueSpartan(
    color: Colors.black,
    fontSize: 14,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.15);

var kLargeLabelTextStyleBlack = GoogleFonts.leagueSpartan(
    color: Colors.black,
    fontSize: 18,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.15);

var kMediumLabelTextStyleGreen = GoogleFonts.leagueSpartan(
    color: Colors.green,
    fontSize: 14,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.15);

var kTitleLargeTextStyleBlack = GoogleFonts.leagueSpartan(
    color: Colors.black,
    fontSize: 22,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15);

const kBottomContainerHeight = 80.0;

const kTextField = TextField(
  obscureText: true,
  decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Password',
  ),
);

const kPaddingLogin = EdgeInsets.symmetric(horizontal: 35.0);
