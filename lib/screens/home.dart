import 'package:disgo/events_list.dart';
import 'package:disgo/featured_list.dart';
import 'package:disgo/more_info_list.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('images/course.png'),
            fit: BoxFit.fitWidth,
            //opacity: 0.50,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                // kAppBar(
                //   onPressedSearch: () {
                //     Navigator.pushNamed(context, '/searchPage');
                //   },
                //   onPressedHome: () {
                //     Navigator.pushNamed(context, '/home');
                //   },
                //   onPressedProfile: () {
                //     Navigator.pushNamed(context, '/profile');
                //   },
                // ),
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 20, bottom: 5),
                  child: Text(
                    'FEATURED',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                const HomeFeaturedList(),
                Container(
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    child: Text(
                      'DGPT EVENTS',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(
                              color: Colors.black, fontWeight: FontWeight.bold),
                    )),
                const HomeEventsList(),
                Container(
                  alignment: Alignment.bottomLeft,
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Text(
                    'MORE INFO',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                HomeMoreInfoList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
