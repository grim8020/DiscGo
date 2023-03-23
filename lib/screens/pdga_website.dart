//
//
//  Certificate error - figure out how to get certificate for website
//
//

import 'package:disgo/appBar.dart';
import 'package:disgo/bottom_nav_back_bar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://www.pdga.com/');

class PDGAWebsite extends StatefulWidget {
  @override
  State<PDGAWebsite> createState() => _PDGAWebsiteState();
}

class _PDGAWebsiteState extends State<PDGAWebsite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBackBar(
          onPressed: () {
            Navigator.pop(context);
          },
          context: context),
      body: Container(
        child: SafeArea(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                Column(
                  children: [
                    Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            TextButton(
                              onPressed: _launchUrl,
                              child: Icon(
                                Icons.language,
                                semanticLabel: 'Open a URL',
                                size: 150,
                              ),
                            ),
                            Text('PDGA Website',
                                style:
                                    Theme.of(context).textTheme.headlineLarge),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                //SizedBox(
                //height: 150,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
