import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:disgo/screens/disc_golf_how_to.dart';
import 'package:disgo/screens/event_details.dart';
import 'package:disgo/screens/merchandise.dart';
import 'package:disgo/screens/search_page_different.dart';
import 'package:flutter/material.dart';

import 'home.dart';

const _kpages = <String, IconData>{
  'HOME': Icons.home,
  'PLAYERS': Icons.person,
  'PLAY': Icons.play_arrow,
  'STORE': Icons.store,
  'HOW TO': Icons.how_to_reg,
};

class ConvexBottomBar extends StatefulWidget {
  const ConvexBottomBar({Key? key}) : super(key: key);

  @override
  State<ConvexBottomBar> createState() => _ConvexBottomBarState();
}

class _ConvexBottomBarState extends State<ConvexBottomBar> {
  final TabStyle _tabStyle = TabStyle.reactCircle;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 0,
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: TabBarView(
                children: [
                  Home(),
                  SearchPage(),
                  EventDetails(),
                  Merchandise(),
                  DiscGolfHowTo(),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: ConvexAppBar(
          style: _tabStyle,
          backgroundColor: Colors.green,
          items: <TabItem>[
            for (final entry in _kpages.entries)
              TabItem(icon: entry.value, title: entry.key),
          ],
        ),
      ),
    );
  }
}
