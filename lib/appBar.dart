import 'package:flutter/material.dart';

class kAppBar extends StatelessWidget {
  const kAppBar(
      {super.key, required this.onPressedSearch,
      required this.onPressedProfile,
      required this.onPressedHome});

  final VoidCallback onPressedSearch;
  final VoidCallback onPressedProfile;
  final VoidCallback onPressedHome;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            onPressed: onPressedSearch,
            icon: Icon(Icons.search),
          ),
          SizedBox(
            width: 100,
            height: 100,
            child: IconButton(
              onPressed: onPressedHome,
              icon: Container(
                width: 120.0,
                height: 120.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 5, color: Colors.green),
                    image: DecorationImage(
                        image: AssetImage(
                      'images/DiscGo.png',
                    ))),
              ),
            ),
          ),
          IconButton(
            onPressed: onPressedProfile,
            icon: Icon(Icons.person_2),
          ),
        ],
      ),
    );
    ;
  }
}
