import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeFeaturedList extends StatelessWidget {
  const HomeFeaturedList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: double.infinity,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10),
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/searchPage');
                },
                child: Text(
                  'Players',
                  style: GoogleFonts.leagueSpartan(
                    textStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: BorderSide(color: Colors.green.shade700, width: 5),
                    ),
                    backgroundColor: Colors.white),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/contestStats');
                },
                child: Text(
                  'Contest Statistics',
                  style: GoogleFonts.leagueSpartan(
                    textStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: BorderSide(color: Colors.green.shade700, width: 5),
                    ),
                    backgroundColor: Colors.white),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/discGolfHowTo');
                },
                child: Text(
                  'Disc Golf How-To',
                  style: GoogleFonts.leagueSpartan(
                    textStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: BorderSide(color: Colors.green.shade700, width: 5),
                    ),
                    backgroundColor: Colors.white),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/meetThePros');
                },
                child: Text(
                  'Meet the Pros',
                  style: GoogleFonts.leagueSpartan(
                    textStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: BorderSide(color: Colors.green.shade700, width: 5),
                    ),
                    backgroundColor: Colors.white),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/merchandise');
                },
                child: Text(
                  'Merchandise',
                  style: GoogleFonts.leagueSpartan(
                    textStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: BorderSide(color: Colors.green.shade700, width: 5),
                    ),
                    backgroundColor: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
