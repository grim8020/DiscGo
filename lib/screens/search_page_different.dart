import 'package:disgo/players.dart';
import 'package:flutter/material.dart';

class SearchPageDifferent extends StatefulWidget {
  @override
  _SearchPageDifferentState createState() => _SearchPageDifferentState();
}

class _SearchPageDifferentState extends State<SearchPageDifferent> {
  String? _result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search')),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(_result ?? '', style: TextStyle(fontSize: 18)),
            ElevatedButton(
              onPressed: () async {
                var result = await showSearch<String>(
                  context: context,
                  delegate: CustomDelegate(),
                );
                setState(() => _result = result);
              },
              child: Text('Search for a player'),
            ),
            TextField(
              keyboardType: TextInputType.text,
              textCapitalization: TextCapitalization.sentences,
            )
          ],
        ),
      ),
    );
  }
}

class CustomDelegate extends SearchDelegate<String> {
  List<String> data = player.take(100).toList();

  @override
  List<Widget> buildActions(BuildContext context) =>
      [IconButton(icon: Icon(Icons.clear), onPressed: () => query = '')];

  @override
  Widget buildLeading(BuildContext context) => IconButton(
      icon: Icon(Icons.chevron_left), onPressed: () => close(context, ''));

  @override
  Widget buildResults(BuildContext context) => Container();

  @override
  Widget buildSuggestions(BuildContext context) {
    var listToShow;
    if (query.isNotEmpty)
      listToShow = data
          .where((p) => p.toLowerCase().contains(query.toLowerCase()))
          .toList();
    else
      listToShow = data;

    return ListView.builder(
      itemCount: listToShow.length,
      itemBuilder: (_, i) {
        var player = listToShow[i];
        return ListTile(
          title: Text(player),
          onTap: () => close(context, player),
        );
      },
    );
  }
}
