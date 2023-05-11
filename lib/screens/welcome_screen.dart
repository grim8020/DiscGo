import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: SafeArea(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Image(
                alignment: Alignment.center,
                image: AssetImage('images/DiscGo.png'),
                height: 150,
                width: 150,
                fit: BoxFit.cover,
              ),
              Container(
                height: double.infinity,
                width: double.infinity,
                child: Image(
                  image: AssetImage('images/welcome_player.png'),
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: Text(
                    'START',
                    style: GoogleFonts.leagueSpartan(
                        textStyle: Theme.of(context).textTheme.titleLarge,
                        color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 100.0),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                        side:
                            BorderSide(color: Colors.green.shade700, width: 5),
                      ),
                      backgroundColor: Colors.green),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
