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
                    child: Text(_data[index][0].toString()),
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Text('FH'),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Text(_data[index][8].toString()),
                                  ],
                                ),
                              ),
                              Text(_data[index][9].toString()),
                              Text(_data[index][10].toString()),
                              Text(_data[index][11].toString()),
                            ],
                          ),
                          Row(
                            children: [
                              Text(_data[index][12].toString()),
                              Text(_data[index][13].toString()),
                              Text(_data[index][14].toString()),
                              Text(_data[index][15].toString()),
                            ],
                          ),
                          Row(
                            children: [
                              Text(_data[index][16].toString()),
                              Text(_data[index][17].toString()),
                              Text(_data[index][18].toString()),
                              Text(_data[index][19].toString()),
                            ],
                          ),
                          Row(
                            children: [
                              Text(_data[index][20].toString()),
                              Text(_data[index][21].toString()),
                              Text(_data[index][22].toString()),
                              Text(_data[index][23].toString()),
                            ],
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Ranking'),
                          Text(_data[index][2].toString()),
                        ],
                      ),
                    ],
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add),
                    padding: EdgeInsets.all(0),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
