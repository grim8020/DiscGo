import 'package:disgo/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventDetails extends StatefulWidget {
  const EventDetails({super.key});

  @override
  State<EventDetails> createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  // String eventLocation = 'Gettysburg, PA';

  int par = 72;

  int eventField = 135;

  String eventStartDate = "xx/xx/xxxx";

  String eventEndDate = "xx/xx/xxxx";

  String pastWinnerName = 'Joe Dohn';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 15.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.6,
          child: ElevatedButton(
            style: kLargeButtonStyle,
            onPressed: () {
              Navigator.pushNamed(context, '/lineupBuilder');
            },
            child: Text(
              "LET'S PLAY!",
              style: GoogleFonts.leagueSpartan(
                  fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.network(
                'https://www.discgolfpark.com/wp-content/uploads/2022/06/DGP_build_course_2.jpg',
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              Positioned(
                bottom: 25,
                child: Container(
                  constraints: const BoxConstraints(maxWidth: double.infinity),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade600.withOpacity(0.6),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(bottom: 5.0),
                          child: Text(
                            'Gettysburg Disc Golf Tournament',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              //backgroundColor: Colors.black.withOpacity(0.4),
                            ),
                          ),
                        ),
                        Text(
                          'Gettysburg, PA',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            //backgroundColor: Colors.black.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Event Details',
                          style: kTitleLargeTextStyleBlack),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 2, color: Colors.green),
                                        borderRadius: BorderRadius.circular(20),
                                        //color: Colors.green,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Column(
                                          children: [
                                            Text(
                                              'Purse:',
                                              style: kLargeLabelTextStyleBlack,
                                            ),
                                            const Text(
                                              '\$4,000.00',
                                              style: TextStyle(
                                                  color: Colors.green),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        // Text('Location:   $eventLocation'),
                                        Text('Par:   $par'),
                                        Text(
                                            'Player Field:   $eventField players'),
                                        Text('Past Winners:  $pastWinnerName'),
                                        // Column(
                                        //   children: [
                                        //     Row(
                                        //       mainAxisAlignment:
                                        //           MainAxisAlignment.spaceEvenly,
                                        //       children: [
                                        //         Padding(
                                        //           padding:
                                        //               const EdgeInsets.all(8.0),
                                        //           child: Column(
                                        //             children: [
                                        //               const Text('2019'),
                                        //               Text(pastWinnerName),
                                        //             ],
                                        //           ),
                                        //         ),
                                        //         Padding(
                                        //           padding:
                                        //               const EdgeInsets.all(8.0),
                                        //           child: Column(
                                        //             children: [
                                        //               const Text('2020'),
                                        //               Text(pastWinnerName),
                                        //             ],
                                        //           ),
                                        //         ),
                                        //         Padding(
                                        //           padding:
                                        //               const EdgeInsets.all(8.0),
                                        //           child: Column(
                                        //             children: [
                                        //               const Text('2021'),
                                        //               Text(pastWinnerName),
                                        //             ],
                                        //           ),
                                        //         ),
                                        //         Padding(
                                        //           padding:
                                        //               const EdgeInsets.all(8.0),
                                        //           child: Column(
                                        //             children: [
                                        //               const Text('2022'),
                                        //               Text(pastWinnerName),
                                        //             ],
                                        //           ),
                                        //         ),
                                        //       ],
                                        //     ),
                                        //   ],
                                        // ),
                                      ]
                                          .map((widget) => Padding(
                                                padding:
                                                    const EdgeInsets.all(5),
                                                child: widget,
                                              ))
                                          .toList(),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Course(s)',
                        style: kTitleLargeTextStyleBlack,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Text(
                                  'North Course',
                                  style: kLargeLabelTextStyleBlack,
                                ),
                              ),
                              Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: const BorderSide(
                                      width: 2, color: Colors.green),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: Text('1790 yards'),
                                ),
                              ),
                              Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: const BorderSide(
                                      width: 2, color: Colors.green),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: Text('HDCP: XXX'),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Text(
                                  'Southeast Course',
                                  style: kLargeLabelTextStyleBlack,
                                ),
                              ),
                              Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: const BorderSide(
                                      width: 2, color: Colors.green),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: Text('1790 yards'),
                                ),
                              ),
                              Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: const BorderSide(
                                      width: 2, color: Colors.green),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: Text('HDCP: XXX'),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: Text(
                                  'West Course',
                                  style: kLargeLabelTextStyleBlack,
                                ),
                              ),
                              Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: const BorderSide(
                                      width: 2, color: Colors.green),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: Text('1790 yards'),
                                ),
                              ),
                              Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: const BorderSide(
                                      width: 2, color: Colors.green),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: Text('HDCP: XXX'),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      // const Card(
                      //   elevation: 10,
                      // ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LetsPlayPulseButton extends StatefulWidget {
  const LetsPlayPulseButton({super.key});

  @override
  _LetsPlayPulseButtonState createState() => _LetsPlayPulseButtonState();
}

// Define the State as with SingleTickerProviderStateMixin to be able to set
// `vsync=this`.
class _LetsPlayPulseButtonState extends State<LetsPlayPulseButton>
    with SingleTickerProviderStateMixin {
  // An Animation object knows the current state of an animation (for example,
  // whether it’s started, stopped, or moving forward or in reverse), but
  // doesn’t know anything about what appears onscreen.
  late Animation<double> _sizeAnimation;
  late Animation<Color?> _colorAnimation;
  // Both AnimationController and CurvedAnimation extends Animation<double>,
  // but add additional methods
  // An AnimationController manages the Animation.
  late AnimationController _controller;
  // A CurvedAnimation defines progression as a non-linear curve.
  late CurvedAnimation _curve;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      // Setting vsync prevents offscreen animations from consuming
      // unnecessary resources, `this` has SingleTickerProviderStateMixin.
      vsync: this,
    );
    _curve = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    // A Tween interpolates between the range of data.
    _sizeAnimation = Tween<double>(begin: 10, end: 40).animate(_curve);
    _colorAnimation =
        ColorTween(begin: Colors.transparent, end: Colors.red).animate(_curve);
    // With addListener(), a listener function is called whenever the value of
    // the animation changes, e.g. call setState() to cause a rebuild.
    _controller.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    super.dispose();
    // Dispose controller to release resources.
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.all(8.0),
          color: _colorAnimation.value,
          height: _sizeAnimation.value,
          width: _sizeAnimation.value,
          child: SizedBox(
            width: 10,
            height: 20,
            child: ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(10),
              ),
              onPressed: () {
                _controller.addStatusListener((status) {
                  if (status == AnimationStatus.completed) {
                    _controller.reverse();
                  } else if (status == AnimationStatus.dismissed) {
                    _controller.forward();
                  }
                });
                _controller.forward();
              },
              child: const Text("Let's Play!"),
            ),
          ),
        ),
      ],
    );
  }
}
