import 'package:disgo/constants.dart';
import 'package:disgo/screens/checkout.dart';
import 'package:disgo/screens/pdga_website.dart';
import 'package:disgo/screens/about_us_screen.dart';
import 'package:disgo/screens/contest_history_screen.dart';
import 'package:disgo/screens/contest_statistics.dart';
import 'package:disgo/screens/disc_golf_how_to.dart';
import 'package:disgo/screens/event_details.dart';
import 'package:disgo/screens/faq_screen.dart';
import 'package:disgo/screens/home.dart';
import 'package:disgo/screens/login.dart';
import 'package:disgo/screens/meet_the_pros.dart';
import 'package:disgo/screens/merchandise.dart';
import 'package:disgo/screens/passwordLogin.dart';
import 'package:disgo/screens/play_instructions.dart';
//import 'package:disgo/player_field_page.dart';
import 'package:disgo/screens/player_list.dart';
import 'package:disgo/screens/profile.dart';
import 'package:disgo/screens/register.dart';
import 'package:disgo/screens/search_page_different.dart';
import 'package:disgo/screens/tour_schedule.dart';
import 'package:disgo/tier_pages/lineup_builder.dart';
import 'package:disgo/tier_pages/tier2_page.dart';
import 'package:disgo/tier_pages/tier3_page.dart';
import 'package:disgo/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'loading_screen.dart';

void main() => runApp(const FantasyDiscGolf());

class FantasyDiscGolf extends StatelessWidget {
  const FantasyDiscGolf({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //removes debug message in corner
      theme: ThemeData().copyWith(
        // cardTheme: CardTheme(
        //   elevation: 10,
        //   color: Colors.green,
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(10),
        //     side: BorderSide(width: 5, color: Colors.white),
        //   ),
        // ),
        colorScheme: ColorScheme(
          surface: Colors.green,
          onSurface: Colors.white,
          error: Colors.red,
          onError: Colors.red,
          brightness: Brightness.light,
          primary: Colors.green,
          onPrimary: Colors.white,
          secondary: Colors.green.shade800,
          onSecondary: Colors.white,
          background: Colors.white,
          onBackground: Colors.green,
          //primaryColor: kGreenColor,
          //scaffoldBackgroundColor: Color(0xFF353935),
          //colorScheme: ColorScheme.fromSwatch().copyWith(
          //secondary: Colors.white,
        ),
        textTheme: GoogleFonts.leagueSpartanTextTheme(),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoadingScreen(),
        //'/playerField': (context) => PlayerFieldPage(),
        '/lineupBuilder': (context) => LineupBuilder(),
        //'/tier2': (context) => Tier2Page(),
        //'/tier3': (context) => Tier3Page(),
        '/login': (context) => Login(),
        '/home': (context) => Home(),
        '/register': (context) => Register(),
        '/passwordLogin': (context) => PasswordLogin(),
        '/welcomeScreen': (context) => WelcomeScreen(),
        '/playerList': (context) => PlayerList(),
        '/contestStats': (context) => ContestStatistics(),
        '/discGolfHowTo': (context) => DiscGolfHowTo(),
        '/meetThePros': (context) => MeetThePros(),
        '/merchandise': (context) => Merchandise(),
        '/searchPage': (context) => SearchPageDifferent(),
        '/contestHistory': (context) => ContestHistoryPage(),
        '/faqPage': (context) => FAQPage(),
        '/profile': (context) => ProfilePage(),
        '/pdga': (context) => PDGAWebsite(),
        '/about': (context) => AboutUs(),
        '/eventDetails': (context) => EventDetails(),
        '/playInstructions': (context) => PlayInstructions(),
        '/tourSchedule': (context) => TourSchedule(),
        '/checkout': (context) => Checkout(),
      },
    );
  }
}
