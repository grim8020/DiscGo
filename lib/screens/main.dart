import 'package:disgo/constants.dart';
import 'package:disgo/home.dart';
import 'package:disgo/login.dart';
import 'package:disgo/passwordLogin.dart';
import 'package:disgo/player_field_page.dart';
import 'package:disgo/register.dart';
import 'package:disgo/tier_pages/tier1_page.dart';
import 'package:disgo/tier_pages/tier2_page.dart';
import 'package:disgo/tier_pages/tier3_page.dart';
import 'package:disgo/welcome_screen.dart';
import 'package:flutter/material.dart';

import 'loading_screen.dart';

void main() => runApp(const FantasyDiscGolf());

class FantasyDiscGolf extends StatelessWidget {
  const FantasyDiscGolf({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //removes debug message in corner
      theme: ThemeData.light().copyWith(
        primaryColor: kGreenColor,
        scaffoldBackgroundColor: Color(0xFF353935),
        //colorScheme: ColorScheme.fromSwatch().copyWith(
        //secondary: Colors.white,
        textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.black)),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoadingScreen(),
        '/playerField': (context) => PlayerFieldPage(),
        '/tier1': (context) => Tier1Page(),
        '/tier2': (context) => Tier2Page(),
        '/tier3': (context) => Tier3Page(),
        '/login': (context) => Login(),
        '/home': (context) => Home(),
        '/register': (context) => Register(),
        '/passwordLogin': (context) => PasswordLogin(),
        '/welcomeScreen': (context) => WelcomeScreen(),
      },
    );
  }
}
