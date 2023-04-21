import 'package:disgo/add_icon_button.dart';
import 'package:disgo/bottom_nav_back_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LineupBuilder extends StatefulWidget {
  const LineupBuilder({super.key});

  @override
  State<LineupBuilder> createState() => _LineupBuilderState();
}

class _LineupBuilderState extends State<LineupBuilder> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      bottomNavigationBar: BottomNavBackBar(
          onPressed: () {
            Navigator.popAndPushNamed(context, '/eventDetails');
          },
          context: context),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xFF89A485),
        child: SafeArea(
          child: Stack(
            fit: StackFit.expand,
            clipBehavior: Clip.none,
            children: [
              Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/field.png'), fit: BoxFit.cover),
                ),
              ),
              //Tier 1 Name & Points
              Positioned(
                  top: height * 0.125,
                  left: width * 0.13,
                  child: TierNames(
                    tierName: 'Tier 1',
                    tierValue1: 1035,
                    tierValue2: 1055,
                  ) //CircularAvatar
                  ),
              //Tier 1 A
              Positioned(
                top: height * 0.105,
                left: width * 0.52,
                child: AddIcon(
                  onPressed: () async {
                    await Navigator.pushNamed(context, '/tier1');
                  },
                ), //CircularAvatar
              ),
              //Tier 1 B
              Positioned(
                  top: height * 0.225,
                  left: width * 0.49,
                  child: AddIcon(onPressed: () {}) //CircularAvatar
                  ),
              // Tier 2 name & Points
              Positioned(
                  top: height * 0.4,
                  left: width * 0.58,
                  child: TierNames(
                    tierName: 'Tier 2',
                    tierValue1: 1021,
                    tierValue2: 1034,
                  ) //CircularAvatar
                  ),
              //Tier 2 A
              Positioned(
                  top: height * 0.33,
                  left: width * 0.24,
                  child: AddIcon(onPressed: () {}) //CircularAvatar
                  ),
              //Tier 2 B
              Positioned(
                  top: height * 0.46,
                  left: width * 0.29,
                  child: AddIcon(onPressed: () {}) //CircularAvatar
                  ),
              //Tier 3 Names & Points
              Positioned(
                  top: height * 0.63,
                  left: width * 0.13,
                  child: TierNames(
                    tierName: 'Tier 3',
                    tierValue1: 985,
                    tierValue2: 1020,
                  ) //CircularAvatar
                  ),
              //Tier 3 A
              Positioned(
                  top: height * 0.615,
                  left: width * 0.45,
                  child: AddIcon(onPressed: () {}) //CircularAvatar
                  ),
              //Tier 3 B
              Positioned(
                  top: height * 0.575,
                  left: width * 0.58,
                  child: AddIcon(onPressed: () {}) //CircularAvatar
                  ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        'Submit Team',
                        style: GoogleFonts.leagueSpartan(
                          textStyle: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 20.0),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          side: BorderSide(
                              color: Colors.green.shade700, width: 5),
                        ),
                        backgroundColor: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
