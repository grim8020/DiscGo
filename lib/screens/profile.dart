import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        foregroundColor: Colors.green,
        bottomOpacity: 0.25,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        child: SafeArea(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                //side: BorderSide(color: Colors.green.shade800, width: 5)),
                elevation: 10,
                margin: EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.account_circle_outlined,
                      size: 150,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Account Name',
                              //style: TextStyle(fontSize: 30),
                              style: Theme.of(context).textTheme.headlineSmall),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Username',
                              //style: TextStyle(fontSize: 30),
                              style: Theme.of(context).textTheme.headlineSmall),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Email Address',
                              //style: TextStyle(fontSize: 30),
                              style: Theme.of(context).textTheme.headlineSmall),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
