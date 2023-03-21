import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoadingScreen extends StatefulWidget {
  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.green.shade600,
              Colors.green.shade100,
            ],
          ),
          //borderRadius: BorderRadius.all(
          //Radius.circular(20.0),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 100,
              ),
              CircleAvatar(
                radius: 150,
                backgroundColor: Colors.green,
                child: Padding(
                  padding: const EdgeInsets.all(15), // Border radius
                  child: ClipOval(
                    child: Image.asset('images/DiscGo.png'),
                  ),
                ),
              ),
              SizedBox(height: 100),
              Image(
                image: AssetImage('images/grimlab.png'),
                height: 40,
              ),
              SizedBox(height: 100),
              Padding(
                padding: const EdgeInsets.all(45.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Text(
                    'CONTINUE',
                    style: GoogleFonts.leagueSpartan(
                      textStyle: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 20.0),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
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

// @override
// void initState() {
//   super.initState();
// }

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     body: Center(
//       child: SpinKitRotatingCircle(
//         color: Colors.white,
//         size: 100.0,
//       ),
//     ),
//   );
// }
