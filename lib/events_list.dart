import 'dart:ffi';

import 'package:flutter/material.dart';

class HomeEventsList extends StatelessWidget {
  const HomeEventsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      color: Colors.grey,
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * .2,
      child: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Card(
                    elevation: 10,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Next Event'),
                            Text('5/20/2023'),
                            Text('Gettysburg Battle Field Open')
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    elevation: 10,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Next Event'),
                            Text('5/20/2023'),
                            Text('Next Event')
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Card(
                elevation: 10,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Next Event'),
                        Text('5/20/2023'),
                        Text('Next Event')
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class HomeEventsList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ConstrainedBox(
//       constraints: BoxConstraints.expand(
//         height: MediaQuery.of(context).size.width * 0.5,
//         width: MediaQuery.of(context).size.height * 1.0,
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(5.0),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                   padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
//                   elevation: 10,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(20.0),
//                     side: BorderSide(color: Colors.white, width: 5),
//                   ),
//                   backgroundColor: Colors.green),
//               onPressed: () {
//                 Navigator.pushNamed(context, '/eventDetails');
//               },
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Text(
//                     'Next Event',
//                     style: Theme.of(context).textTheme.headlineSmall?.copyWith(
//                         color: Colors.white, fontWeight: FontWeight.w400),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Text(
//                     '5/21/2023',
//                     style: Theme.of(context).textTheme.bodyLarge?.copyWith(
//                         color: Colors.white, fontWeight: FontWeight.w400),
//                   ),
//                   SizedBox(height: 10),
//                   Container(
//                     width: MediaQuery.of(context).size.width * 0.4,
//                     child: Text(
//                       'slakdjalksdaksdnaklsndaksdajnsdoaspdijiapfk apoifja;ksjc apasjaspj papijashja a apeijapsc-pw aikasfp',
//                       style: Theme.of(context).textTheme.bodyMedium?.copyWith(
//                           color: Colors.white, fontWeight: FontWeight.w400),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                       padding: EdgeInsets.symmetric(
//                           vertical: 20.0, horizontal: 20.0),
//                       elevation: 10,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(20.0),
//                         side: BorderSide(color: Colors.white, width: 5),
//                       ),
//                       backgroundColor: Colors.green),
//                   onPressed: () {},
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Future Events',
//                         style: Theme.of(context)
//                             .textTheme
//                             .headlineSmall
//                             ?.copyWith(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w400),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       SizedBox(height: 10),
//                       Container(
//                         child: Text(
//                           'slakdjalksdaksdn',
//                           style: Theme.of(context)
//                               .textTheme
//                               .bodyMedium
//                               ?.copyWith(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.w400),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 5.0),
//                 ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                       padding: EdgeInsets.symmetric(
//                           vertical: 20.0, horizontal: 20.0),
//                       elevation: 10,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(20.0),
//                         side: BorderSide(color: Colors.white, width: 5),
//                       ),
//                       backgroundColor: Colors.green),
//                   onPressed: () {
//                     Navigator.pushNamed(context, '/playInstructions');
//                   },
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Play Instructions',
//                         style: Theme.of(context)
//                             .textTheme
//                             .headlineSmall
//                             ?.copyWith(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w400),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       SizedBox(height: 10),
//                       Container(
//                         child: Text(
//                           'slakdjalksdaksdnak',
//                           style: Theme.of(context)
//                               .textTheme
//                               .bodyMedium
//                               ?.copyWith(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.w400),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
