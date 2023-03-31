import 'package:disgo/players.dart';
import 'package:flutter/material.dart';
import 'package:csv/csv.dart';
import 'package:flutter/services.dart';

class PlayerStats extends StatefulWidget {
  const PlayerStats({Key? key}) : super(key: key);

  @override
  State<PlayerStats> createState() => _PlayerStatsState();
}

class _PlayerStatsState extends State<PlayerStats> {
  List<List<dynamic>> _data = [];
  void _loadCSV() async {
    final _rawData = await rootBundle.loadString('csv_file/player_stats.csv');
    List<List<dynamic>> _listData =
        const CsvToListConverter().convert(_rawData);
    setState(() {
      _data = _listData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: ListView.builder(
            itemCount: _data.length,
            itemBuilder: (_, index) {
              return Card(
                margin: const EdgeInsets.all(3),
                color: index == 0 ? Colors.amber : Colors.white,
                child: ListTile(
                  leading: Text(_data[index][0].toString()),
                  title: Text(_data[index][1]),
                  trailing: Text(_data[index][2].toString()),
                ),
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: _loadCSV,
        ));
  }
}
