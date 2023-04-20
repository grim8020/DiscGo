import 'package:disgo/appBar.dart';
import 'package:disgo/bottom_button.dart';
import 'package:disgo/components.dart';
import 'package:disgo/tier_pages/lineup_builder.dart';
import 'package:flutter/material.dart';

class EventDetails extends StatefulWidget {
  const EventDetails({super.key});

  @override
  State<EventDetails> createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  String eventLocation = 'some location';

  int par = 72;

  int eventField = 135;

  String eventStartDate = "xx/xx/xxxx";

  String eventEndDate = "xx/xx/xxxx";

  String pastWinnerName = 'Name';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomButton(
        onTap: () {
          Navigator.pushNamed(context, '/lineupBuilder');
        },
        buttonTitle: "Let's Play",
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              kAppBar(
                onPressedSearch: () {
                  Navigator.pushNamed(context, '/searchPage');
                },
                onPressedHome: () {
                  Navigator.pushNamed(context, '/home');
                },
                onPressedProfile: () {
                  Navigator.pushNamed(context, '/profile');
                },
              ),
              // BackButtonGreen(
              //     onPressed: () {
              //       Navigator.pop(context);
              //     },
              //     color: Colors.green),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Image.network(
                    'https://www.discgolfpark.com/wp-content/uploads/2022/06/DGP_build_course_2.jpg'),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Event Details',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
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
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 4, color: Colors.green.shade700),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.green,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Purse:',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineSmall
                                              ?.copyWith(color: Colors.white),
                                        ),
                                        Text(
                                          '\$4,000.00',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text('Location:   $eventLocation'),
                                    Text('Par:   $par'),
                                    Text('Player Field:   $eventField players'),
                                    Text('Past Winners:'),
                                    Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                children: [
                                                  Text('2019'),
                                                  Text(pastWinnerName),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                children: [
                                                  Text('2020'),
                                                  Text(pastWinnerName),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                children: [
                                                  Text('2021'),
                                                  Text(pastWinnerName),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                children: [
                                                  Text('2022'),
                                                  Text(pastWinnerName),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ]
                                      .map((widget) => Padding(
                                            padding: const EdgeInsets.all(5),
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
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
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
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Text(
                              'North Course',
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                          ),
                          Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(width: 5, color: Colors.green),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text('1790 yards'),
                            ),
                          ),
                          Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(width: 5, color: Colors.green),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
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
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Text(
                              'Southeast Course',
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                          ),
                          Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(width: 5, color: Colors.green),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text('1790 yards'),
                            ),
                          ),
                          Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(width: 5, color: Colors.green),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
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
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Text(
                              'West Course',
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                          ),
                          Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(width: 5, color: Colors.green),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text('1790 yards'),
                            ),
                          ),
                          Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(width: 5, color: Colors.green),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text('HDCP: XXX'),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                  ),
                ],
              ),
              BackButtonGreen(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  color: Colors.green),
            ],
          ),
        ),
      ),
    );
  }
}
