import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doan_ltdd_chk/screens/addFriend_screen.dart';
import 'package:doan_ltdd_chk/screens/trangchu.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class DSBanbe extends StatefulWidget {
  const DSBanbe({Key? key}) : super(key: key);

  @override
  State<DSBanbe> createState() => DSBanbeState();
}

class DSBanbeState extends State<DSBanbe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff152B42),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(children: [
            Padding(padding: EdgeInsets.all(30)),
            Container(
              child: Row(children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => home(),
                      ),
                    );
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 60,
            ),
            Text(
              'Danh sách bạn bè',
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Expanded(
                child: StreamBuilder<QuerySnapshot>(
                  stream: FirebaseFirestore.instance
                      .collection('users')
                      .orderBy('score', descending: true)
                      .snapshots(),
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
                              snap[index]['email'],
                            ),
                            trailing: Text(
                              'Thông Tin ',
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
            Container(
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        Color.fromARGB(255, 51, 10, 146).withOpacity(0.8)),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ThemBanbe(),
                      ),
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Text('Thêm bạn bè'),
                  )),
            ),
          ]),
        ));
  }
}
