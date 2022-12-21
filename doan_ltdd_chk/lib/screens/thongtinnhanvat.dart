import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:getwidget/getwidget.dart';

import 'DSFriends.dart';
import 'package:flutter/material.dart';
import 'package:doan_ltdd_chk/screens/giaodienchoi.dart';

class infor extends StatefulWidget {
  const infor({super.key});

  @override
  State<infor> createState() => _infor();
}

class _infor extends State<infor> {
  final double x = 0.0;
  final double lv = 0;
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Color(0xff152B42),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.fromLTRB(0, 50, 0, 0)),
            Text(
              'Thông tin tài khoản',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 20)),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                width: 1,
                color: Colors.grey,
              )),
              padding: EdgeInsets.fromLTRB(0, 40, 0, 20),
              child: Column(
                children: [
                  Image.asset(
                    'assets/h16.png',
                    width: 70,
                    height: 70,
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Text(user.email!, style: TextStyle(color: Colors.white)),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Padding(padding: EdgeInsets.fromLTRB(30, 0, 0, 120)),
                    Text(
                      'LV $lv :',
                      style: TextStyle(color: Colors.white),
                    ),
                    Container(
                      width: 300,
                      height: 20,
                      child: GFProgressBar(
                        percentage: x + 0.5,
                        backgroundColor: Color.fromARGB(255, 19, 18, 18),
                        progressBarColor: Color.fromARGB(255, 241, 233, 232),
                        lineHeight: 10,
                      ),
                    ),
                  ]),
                  new SizedBox(
                    width: 200.0,
                    height: 200.0,
                    child: ElevatedButton(
                      onPressed: () => {},
                      child: Image(image: AssetImage('assets/223.png')),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 42, 101, 83)),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 20)),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: () => {},
                    child: Text('Sửa thông tin'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 37, 45, 108)),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DSBanbe(),
                        ),
                      )
                    },
                    child: Text('Bạn bè'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 37, 45, 108)),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
