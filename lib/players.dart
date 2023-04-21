import 'package:csv/csv.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

List<List<dynamic>> data = [];

class Data extends StatefulWidget {
  const Data({super.key});

  @override
  State<Data> createState() => _DataState();
}

class _DataState extends State<Data> {
  // List<List<dynamic>> data = [];

  void _loadCSV() async {
    final rawData = await rootBundle.loadString("csv_files/player_stats.csv");
    List<List<dynamic>> listData = const CsvToListConverter().convert(rawData);
    setState(() {
      data = listData;
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
          itemCount: data.length,
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
                        Text(
                          data[index][0].toString(),
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green),
                          child: Text(
                            'Ranking: ${data[index][2].toString()}',
                            style: TextStyle(
                                fontSize: 13,
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
                          Stats(data: data[index][8].toString(), text: 'FH'),
                          Stats(
                              data: data[index][9].toString(), text: 'Parked'),
                          Stats(data: data[index][10].toString(), text: 'C1R'),
                          Stats(data: data[index][11].toString(), text: 'C2R'),
                        ],
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Row(
                        children: [
                          Stats(data: data[index][12].toString(), text: 'Scr'),
                          Stats(data: data[index][13].toString(), text: 'C1P'),
                          Stats(data: data[index][14].toString(), text: 'C2P'),
                          Stats(
                              data: data[index][15].toString(), text: 'Thw20'),
                        ],
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Row(
                        children: [
                          Stats(data: data[index][16].toString(), text: 'PPI'),
                          Stats(data: data[index][17].toString(), text: 'OBR'),
                          Stats(data: data[index][18].toString(), text: 'BelP'),
                          Stats(data: data[index][19].toString(), text: 'Par'),
                        ],
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Row(
                        children: [
                          Stats(data: data[index][20].toString(), text: 'AbvP'),
                          Stats(data: data[index][21].toString(), text: 'Bir%'),
                          Stats(data: data[index][22].toString(), text: 'BB'),
                          Stats(data: data[index][23].toString(), text: 'DOF'),
                        ],
                      )
                    ],
                  ),
                  trailing: SizedBox(
                    width: 20,
                    child: IconButton(
                      alignment: Alignment.centerRight,
                      onPressed: () async {
                        await Navigator.pushNamed(context, '/lineupBuilder');
                        String playerNameSelected = data[index][0].toString();
                      },
                      icon: Icon(Icons.add),
                      iconSize: 25,
                      padding: EdgeInsets.all(0),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}

const kPlayerFontSize = TextStyle(fontSize: 12);

class Stats extends StatelessWidget {
  const Stats({Key? key, required this.data, required this.text})
      : super(key: key);

  final data;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.symmetric(
            vertical: BorderSide(
              width: 1,
            ),
            horizontal: BorderSide(width: 1)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 4.0),
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
