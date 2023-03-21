import 'package:disgo/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:disgo/bottom_nav_back_bar.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  double x = 0;
  double y = 0;
  double z = 0;

  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBackBar(
          onPressed: () {
            Navigator.pop(context);
          },
          context: context),
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     begin: Alignment.topRight,
        //     end: Alignment.bottomLeft,
        //     colors: [
        //       Colors.green.shade600,
        //       Colors.green.shade100,
        //     ],
        //   ),
        //borderRadius: BorderRadius.all(
        //Radius.circular(20.0),
        //),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                alignment: AlignmentDirectional.topStart,
                children: [
                  Container(
                    width: double.infinity,
                    height: 300,
                    child: Image(
                      image: AssetImage('images/disc_golf_course.png'),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Container(
                    child: CircleAvatar(
                      radius: 125,
                      backgroundColor: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.all(15), // Border radius
                        child: ClipOval(
                          child: Image.asset(
                            'images/DiscGo.png',
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                    ),
                    transform: Matrix4(
                      1,
                      0,
                      0,
                      0,
                      0,
                      1,
                      0,
                      0,
                      0,
                      0,
                      1,
                      0,
                      -75,
                      20,
                      z,
                      1,
                    )
                      ..rotateX(x)
                      ..rotateY(y)
                      ..rotateZ(-.3),
                  )
                ],
              ),
              // SizedBox(height: 25),
              Padding(
                padding: kPaddingLogin,
                child: TextField(
                  autofocus: true,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                  ),
                ),
              ),
              Padding(
                padding: kPaddingLogin,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/passwordLogin');
                  },
                  child: Text(
                    'CONTINUE WITH EMAIL',
                    style: GoogleFonts.leagueSpartan(
                      textStyle: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 20.0),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side:
                            BorderSide(color: Colors.green.shade700, width: 5),
                      ),
                      backgroundColor: Colors.green),
                ),
              ),
              // Padding(
              //   padding: kPaddingLogin,
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     children: [],
              //   ),
              // ),
              // Align(
              //   alignment: Alignment.center,
              //   child: Container(
              //     child: Text('OR'),
              //   ),
              // ),
              Padding(
                padding: kPaddingLogin,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  child: Text(
                    'REGISTER WITH EMAIL',
                    style: GoogleFonts.leagueSpartan(
                      textStyle: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 20.0),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side:
                            BorderSide(color: Colors.green.shade700, width: 5),
                      ),
                      backgroundColor: Colors.green),
                ),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
