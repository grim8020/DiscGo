import 'package:csv/csv.dart';
import 'package:disgo/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'convex_appBar_nav.dart';

List<List<dynamic>> _data = [];

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  void _loadCSV() async {
    final rawData = await rootBundle.loadString("csv_files/player_stats.csv");
    List<List<dynamic>> listData = const CsvToListConverter().convert(rawData);
    if (mounted) {
      setState(() {
        _data = listData;
      });
    }
  }

  TextEditingController editingController = TextEditingController();

  final duplicateItems = List<String>.generate(
      _data.length, (index) => _data[index][0].toString());

  List items = <String>[];

  @override
  void initState() {
    super.initState();
    items = duplicateItems;
  }

  void filterSearchResults(String query) {
    setState(() {
      items = duplicateItems
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    _loadCSV();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Search players'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                filterSearchResults(value);
              },
              controller: editingController,
              decoration: InputDecoration(
                labelText: 'Search',
                hintText: 'Search',
                prefixIcon: const Icon(Icons.search_rounded),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigator.pushReplacement(
              //   context,
              //   MaterialPageRoute(
              //     builder: (BuildContext context) => ConvexBottomBar(
              //       choice: 1,
              //     ),
              //   ),
              // );

              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) =>
                      ConvexBottomBar(choice: 1),
                  transitionDuration: Duration.zero,
                  reverseTransitionDuration: Duration.zero,
                ),
              );
            },
            child: Text('SHOW PLAYER LIST') /*Icon(Icons.refresh)*/,
          ),
          Expanded(
            child: ListView.separated(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(
                      '${items[index]}',
                      style: kMediumLabelTextStyleBlack,
                    ),
                  ),
                  trailing: TextButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/eventDetails');
                      //add player bio pages and navigate to them from here
                    },
                    label: const Text(''),
                    icon: Row(
                      children: const [
                        Text('INFO'),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider();
              },
            ),
          ),
        ],
      ),
    );
  }
}
