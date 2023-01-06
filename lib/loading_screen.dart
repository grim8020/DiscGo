import 'package:flutter/material.dart';

import 'constants.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kGreenColor,
        title: Text('DiscGo: Fantasy Disc Golf'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                decoration: BoxDecoration(
                  //color: Colors.grey.shade800,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                child: Image.asset(
                  'images/DiscGo.png',
                  height: 400,
                  width: 400,
                ),
              ),
            ),
            Container(
              child: Text(
                'This weeks events...',
                style: kHomeTitle,
              ),
            ),
            SizedBox(height: 15.0),
            GestureDetector(
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Text('EVENT DROPDOWN MENU', style: kDropDownMenuText),
                decoration: BoxDecoration(
                  color: kGreenColor,
                  border: Border.all(style: BorderStyle.solid, width: 3.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
              onTap: () {
                setState(() {
                  Navigator.pushNamed(context, '/playerField');
                });
              },
            ),
            Container(
              padding: EdgeInsets.all(70.0),
            ),
          ],
        ),
      ),
      //bottomNavigationBar: NavBar(),
    );
  }
}
