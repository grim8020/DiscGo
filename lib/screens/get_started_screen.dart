import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../constants.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Material(
                    elevation: 10,
                    shape: const CircleBorder(
                      side: BorderSide(width: 5, color: Colors.green),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(
                      'images/DiscGo.png',
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Center(
                    child: Opacity(
                      opacity: 0.45,
                      child: Image.asset(
                        'images/Disc Golf Player.png',
                        height: MediaQuery.of(context).size.height * 0.47,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    child: ElevatedButton(
                      style: kLargeButtonStyle,
                      onPressed: () => Navigator.pushNamed(context, '/login'),
                      child: Text(
                        'GET STARTED',
                        style: kLargeButtonTextStyle,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const Expanded(
                        child: Divider(
                          thickness: 2,
                          color: Colors.green,
                          //height: 4,
                          indent: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 30),
                        child: Text(
                          'SIGN IN WITH',
                          style: kMediumLabelTextStyleBlack,
                        ),
                      ),
                      const Expanded(
                        child: Divider(
                          thickness: 2,
                          color: Colors.green,
                          //height: 4,
                          endIndent: 20,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Material(
                              elevation: 10,
                              shape: const CircleBorder(
                                side: BorderSide(width: 2, color: Colors.green),
                              ),
                              clipBehavior: Clip.antiAlias,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Colors.white24,
                                      Colors.grey.shade300
                                    ],
                                  ),
                                ),
                                child: IconButton(
                                  icon: const Icon(MdiIcons.google),
                                  onPressed: () {},
                                  color: Colors.green,
                                ),
                              ),
                            ),
                            Material(
                              elevation: 10,
                              shape: const CircleBorder(
                                side: BorderSide(width: 2, color: Colors.green),
                              ),
                              clipBehavior: Clip.antiAlias,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Colors.white24,
                                      Colors.grey.shade300
                                    ],
                                  ),
                                ),
                                child: IconButton(
                                  icon: const Icon(MdiIcons.apple),
                                  onPressed: () {},
                                  color: Colors.green,
                                ),
                              ),
                            ),
                            Material(
                              elevation: 10,
                              shape: const CircleBorder(
                                side: BorderSide(width: 2, color: Colors.green),
                              ),
                              clipBehavior: Clip.antiAlias,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Colors.white24,
                                      Colors.grey.shade300
                                    ],
                                  ),
                                ),
                                child: IconButton(
                                  icon: const Icon(MdiIcons.microsoft),
                                  onPressed: () {},
                                  color: Colors.green,
                                ),
                              ),
                            ),
                            Material(
                              elevation: 10,
                              shape: const CircleBorder(
                                side: BorderSide(width: 2, color: Colors.green),
                              ),
                              clipBehavior: Clip.antiAlias,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Colors.white24,
                                      Colors.grey.shade300
                                    ],
                                  ),
                                ),
                                child: IconButton(
                                  icon: const Icon(MdiIcons.facebook),
                                  onPressed: () {},
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
