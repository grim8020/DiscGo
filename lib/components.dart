import 'package:csv/csv.dart';
import 'package:disgo/players.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
          const SizedBox(width: 10),
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

class PlayerListCard extends StatefulWidget {
  PlayerListCard({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  State<PlayerListCard> createState() => _PlayerListCardState();
}

class _PlayerListCardState extends State<PlayerListCard> {
  List<List<dynamic>> data = [];
  loadAsset() async {
    final myData = await rootBundle.loadString("assets/ford.csv");
    List<List<dynamic>> csvTable = CsvToListConverter().convert(myData);
    print(csvTable);
    data = csvTable;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: Colors.green.shade800, width: 5),
        ),
        elevation: 10,
        child: ListTile(
          onTap: widget.onTap,
          leading: Column(
            children: [
              Text(data[0].toString()),
              Icon(
                Icons.face,
                size: 40,
              ),
            ],
          ),
          title: Text('HELP'),
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
  PlayerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return PlayerListCard(onTap: () => null);
        },
      ),
    );
  }
}
