import 'package:flutter/material.dart';
import 'constants.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.green.shade600,
              Colors.green.shade100,
            ],
          ),
          //borderRadius: BorderRadius.all(
          //Radius.circular(20.0),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search),
                    ),
                    CircleAvatar(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.person_2),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('LOGIN'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('REGISTER'),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('CONTINUE WITH EMAIL'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
