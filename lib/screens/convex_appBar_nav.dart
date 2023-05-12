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
  'RESOURCES': Icons.my_library_books,
  'STORE': Icons.store,
};

class ConvexBottomBar extends StatefulWidget {
  const ConvexBottomBar({Key? key, required this.choice}) : super(key: key);
  final int choice;

  @override
  State<ConvexBottomBar> createState() => _ConvexBottomBarState();
}

class _ConvexBottomBarState extends State<ConvexBottomBar> {
  final TabStyle _tabStyle = TabStyle.reactCircle;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: widget.choice,
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: TabBarView(
                children: [
                  Home(),
                  SearchPage(),
                  EventDetails(),
                  DiscGolfHowTo(),
                  Merchandise(),
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
