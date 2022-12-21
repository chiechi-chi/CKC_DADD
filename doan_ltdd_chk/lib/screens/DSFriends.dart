import 'package:doan_ltdd_chk/screens/setting_screen.dart';
import 'package:doan_ltdd_chk/screens/store_screen.dart';
import 'package:doan_ltdd_chk/screens/sukien.dart';
import 'package:doan_ltdd_chk/screens/trangchu.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

import 'addFriend_screen.dart';
import 'package:flutter/material.dart';

import 'lichsu.dart';

class DSBanbe extends StatefulWidget {
  const DSBanbe({super.key});

  @override
  State<DSBanbe> createState() => _DSBanbe();
}

class _DSBanbe extends State<DSBanbe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff152B42),
      body: Container(
        padding: EdgeInsets.only(top: 80),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const Text(
                "\nDannh Sách bạn bè ",
                style: const TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              StreamBuilder<QuerySnapshot>(
                  stream: FirebaseFirestore.instance
                      .collection("users")
                      .snapshots(),
                  builder: (BuildContext context,
                      AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.hasData) {
                      final snap = snapshot.data!.docs;
                      return ListView.builder(
                        shrinkWrap: true,
                        primary: false,
                        itemCount: snap.length,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 60,
                            width: double.infinity,
                            margin: EdgeInsets.only(bottom: 20),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(2, 2),
                                    blurRadius: 10,
                                  )
                                ]),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    snap[index]['email'],
                                    style: const TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    } else {
                      return const SizedBox();
                    }
                  })
            ],
          ),
        ),
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
