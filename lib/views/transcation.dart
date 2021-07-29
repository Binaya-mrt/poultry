import 'package:flutter/material.dart';
import 'package:poultry/database/db.dart';
import 'package:poultry/models/transcationModel.dart';

class Transcations extends StatefulWidget {
  const Transcations({Key? key}) : super(key: key);

  @override
  _TranscationsState createState() => _TranscationsState();
}

class _TranscationsState extends State<Transcations> {
  get selectedId => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: FutureBuilder<List<Transcation>>(
              future: nafadb.instance.getGroceries(),
              builder: (BuildContext context,
                  AsyncSnapshot<List<Transcation>> snapshot) {
                if (!snapshot.hasData) {
                  return Center(child: Text('Loading...'));
                }
                return snapshot.data!.isEmpty
                    ? Center(child: Text('No Groceries in List.'))
                    : ListView(
                        children: snapshot.data!.map((nafa) {
                          return Center(
                            child: Card(
                              color: selectedId == nafa.id
                                  ? Colors.white70
                                  : Colors.white,
                              child: Container(
                                color: Colors.red.withOpacity(0.1),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          nafa.invoice,
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        Text(
                                          nafa.title,
                                          style: TextStyle(fontSize: 30),
                                        ),
                                        IconButton(
                                            onPressed: () {
                                              setState(() {
                                                nafadb.instance
                                                    .remove(nafa.id!);
                                              });
                                            },
                                            icon: Icon(
                                                Icons.delete_forever_outlined)),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Rate: ${nafa.rate}',
                                          style: TextStyle(fontSize: 25),
                                        ),
                                        Text(
                                          'Total: ${nafa.total}',
                                          style: TextStyle(fontSize: 25),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              // child: ListTile(
                              //   title: Text(nafa.name),
                              //   onTap: () {
                              //     setState(() {
                              //       if (selectedId == null) {
                              //         textController.text = nafa.name;
                              //         selectedId = nafa.id;
                              //       } else {
                              //         textController.text = '';
                              //         selectedId = null;
                              //       }
                              //     });
                              //   },
                              //   onLongPress: () {
                              //     setState(() {
                              //       DatabaseHelper.instance.remove(nafa.id!);
                              //     });
                              //   },
                              // ),
                            ),
                          );
                        }).toList(),
                      );
              }),
        ),
      ),
    );
  }
}
