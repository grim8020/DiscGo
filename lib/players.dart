import 'package:csv/csv.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Data extends StatefulWidget {
  const Data({Key? key}) : super(key: key);

  @override
  State<Data> createState() => _DataState();
}

class _DataState extends State<Data> {
  List<List<dynamic>> _data = [];

  void _loadCSV() async {
    final rawData = await rootBundle.loadString("csv_files/player_stats.csv");
    List<List<dynamic>> listData = const CsvToListConverter().convert(rawData);
    setState(() {
      _data = listData;
    });
  }

  @override
  Widget build(BuildContext context) {
    _loadCSV();
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   child: const Icon(Icons.add),
      //   onPressed: _loadCSV,
      // ),
      body: ListView.builder(
          itemCount: _data.length,
          itemBuilder: (_, index) {
            return Card(
              margin: EdgeInsets.all(0),
              //color: index == 1 ? Colors.white : Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 20,
                    child: Icon(
                      Icons.person,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Row(
                      children: [
                        Text(_data[index][0].toString()),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 3, horizontal: 3),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green),
                          child: Text(
                            'Ranking: ${_data[index][2].toString()}',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Stats(data: _data[index][8].toString(), text: 'FH'),
                          Stats(
                              data: _data[index][9].toString(), text: 'Parked'),
                          Stats(data: _data[index][10].toString(), text: 'C1R'),
                          Stats(data: _data[index][11].toString(), text: 'C2R'),
                        ],
                      ),
                      Row(
                        children: [
                          Stats(data: _data[index][12].toString(), text: 'Scr'),
                          Stats(data: _data[index][13].toString(), text: 'C1P'),
                          Stats(data: _data[index][14].toString(), text: 'C2P'),
                          Stats(
                              data: _data[index][15].toString(), text: 'Thw20'),
                        ],
                      ),
                      Row(
                        children: [
                          Stats(data: _data[index][16].toString(), text: 'PPI'),
                          Stats(data: _data[index][17].toString(), text: 'OBR'),
                          Stats(
                              data: _data[index][18].toString(), text: 'BelP'),
                          Stats(data: _data[index][19].toString(), text: 'Par'),
                        ],
                      ),
                      Row(
                        children: [
                          Stats(
                              data: _data[index][20].toString(), text: 'AbvP'),
                          Stats(
                              data: _data[index][21].toString(), text: 'Bir%'),
                          Stats(data: _data[index][22].toString(), text: 'BB'),
                          Stats(data: _data[index][23].toString(), text: 'DOF'),
                        ],
                      )
                    ],
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add),
                    iconSize: 25,
                    padding: EdgeInsets.all(0),
                  ),
                ),
              ),
            );
          }),
    );
  }
}

const kPlayerFontSize = TextStyle(fontSize: 10);

class Stats extends StatelessWidget {
  const Stats({Key? key, required this.data, required this.text})
      : super(key: key);

  final data;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.symmetric(
            vertical: BorderSide(
              width: 1,
            ),
            horizontal: BorderSide(width: 1)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Row(
          children: [
            Text(
              text,
              style: kPlayerFontSize,
            ),
            SizedBox(
              width: 2,
            ),
            Text(
              data,
              style: kPlayerFontSize,
            ),
            SizedBox(
              width: 2,
            ),
          ],
        ),
      ),
    );
  }
}
