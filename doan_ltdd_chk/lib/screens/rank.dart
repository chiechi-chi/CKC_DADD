import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doan_ltdd_chk/screens/lichsu.dart';
import 'package:doan_ltdd_chk/screens/setting_screen.dart';
import 'package:doan_ltdd_chk/screens/store_screen.dart';
import 'package:doan_ltdd_chk/screens/sukien.dart';
import 'package:doan_ltdd_chk/screens/thongtinnhanvat.dart';
import 'package:doan_ltdd_chk/screens/trangchu.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class Rank extends StatefulWidget {
  const Rank({Key? key}) : super(key: key);

  @override
  State<Rank> createState() => _RankState();
}

class _RankState extends State<Rank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(children: [
          SizedBox(
            height: 40,
          ),
          Text(
            'RANK',
            style: TextStyle(
                fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            child: Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream:
                    FirebaseFirestore.instance.collection('users').snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData)
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  final snap = snapshot.data!.docs;

                  return ListView.builder(
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          title: Text(
                            snap[index]['name'],
                          ),
                          trailing: Text(
                            snap[index]['score'].toString(),
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      );
                    },
                    itemCount: snap.length,
                  );
                },
              ),
            ),
          ),
        ]),
      ),
      floatingActionButton: Container(
        width: 90,
        child: SizedBox(
          height: 80,
          child: FloatingActionButton(
            child: Icon(
              Icons.home,
              size: 40,
            ),
            backgroundColor: Color.fromARGB(255, 40, 3, 105),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => home(),
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => sukien(),
                      ),
                    );
                  }),
                  icon: Icon(Icons.flash_on)),
              IconButton(
                  onPressed: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Store(),
                      ),
                    );
                  }),
                  icon: Icon(Icons.shop_two)),
              IconButton(
                  onPressed: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => history(),
                      ),
                    );
                  }),
                  icon: Icon(Icons.history)),
              IconButton(
                  onPressed: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => setting(),
                      ),
                    );
                  }),
                  icon: Icon(Icons.settings)),
            ],
          ),
        ),
      ),
    );
  }
}
//   