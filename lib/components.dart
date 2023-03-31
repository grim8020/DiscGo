import 'package:disgo/bottom_button.dart';
import 'package:flutter/material.dart';

class BackButtonGreen extends StatelessWidget {
  BackButtonGreen({required this.onPressed, required this.color});

  final VoidCallback onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.arrow_back,
            color: color,
            size: 15,
          ),
          SizedBox(width: 10),
          Text(
            'BACK',
            style:
                Theme.of(context).textTheme.labelSmall?.copyWith(color: color),
          ),
        ],
      ),
    );
  }
}

class PlayerListCard extends StatelessWidget {
  PlayerListCard({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    int index = 0;
    int indexPlus = ++index;
    String indexString = indexPlus.toString();

    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(color: Colors.green.shade800, width: 5)),
        elevation: 10,
        child: ListTile(
          onTap: onTap,
          leading: Column(
            children: [
              Text(indexString),
              Icon(
                Icons.face,
                size: 40,
              ),
            ],
          ),
          title: Text('Player 1'),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Key Stats / description'),
              Text('Stat numbers'),
            ],
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_forward,
                size: 35,
              ),
            ],
          ),
          isThreeLine: true,
        ),
      ),
    );
  }
}

class PlayerListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          PlayerListCard(onTap: () {}),
          PlayerListCard(onTap: () {}),
          PlayerListCard(onTap: () {}),
          PlayerListCard(onTap: () {}),
          PlayerListCard(onTap: () {}),
          PlayerListCard(onTap: () {}),
          PlayerListCard(onTap: () {}),
          PlayerListCard(onTap: () {}),
          PlayerListCard(onTap: () {}),
        ],
      ),
    );
  }
}

// class NavBackButton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return BottomButton(
//       onTap: () {
//         Navigator.pop(context);
//       },
//       buttonTitle: 'BACK',
//     );
//   }
// }
