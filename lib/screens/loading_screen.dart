import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;

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
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Flexible(
                  child: FractionallySizedBox(
                    heightFactor: 1.5,
                    child: CircleAvatar(
                      radius: 150,
                      backgroundColor: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.all(15), // Border radius
                        child: ClipOval(
                          child: Image.asset('images/DiscGo.png'),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 0.1 * deviceHeight),
                Center(
                  child: Text(
                    'Developed by',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
                // SizedBox(
                //   height: 10,
                // ),
                Flexible(
                  child: FractionallySizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Image(
                          image: AssetImage('images/grimlab.png'),
                          height: 50,
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                          child: Text('&'),
                        ),
                        Text(
                          'Trottwell llc',
                          style: Theme.of(context).textTheme.titleLarge,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Flexible(
                  child: FractionallySizedBox(
                    widthFactor: 0.6,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 20.0),
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: BorderSide(
                                color: Colors.green.shade700, width: 5),
                          ),
                          backgroundColor: Colors.green),
                      child: Text(
                        'CONTINUE',
                        style: GoogleFonts.leagueSpartan(
                          textStyle: Theme.of(context).textTheme.labelSmall,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
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
