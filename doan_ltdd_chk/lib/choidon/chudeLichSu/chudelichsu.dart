import 'package:doan_ltdd_chk/choidon/chudeLichSu/xacnhanchoilichsu.dart';
import 'package:doan_ltdd_chk/choidon/chudeLichSu/xacnhanchoilichsu1.dart';
import 'package:doan_ltdd_chk/choidon/chudeLichSu/xacnhanchoilichsu2.dart';
import 'package:doan_ltdd_chk/choidon/chudeLichSu/xacnhanchoilichsu3.dart';
import 'package:doan_ltdd_chk/choidon/chudeLichSu/xacnhanchoilichsu4.dart';
import 'package:doan_ltdd_chk/choidon/chudeLichSu/xacnhanchoilichsu5.dart';
import 'package:doan_ltdd_chk/choidon/chudeLichSu/xacnhanchoilichsu6.dart';
import 'package:doan_ltdd_chk/choidon/chudeLichSu/xacnhanchoilichsu7.dart';
import 'package:doan_ltdd_chk/choidon/chudeLichSu/xacnhanchoilichsu8.dart';
import 'package:doan_ltdd_chk/choidon/chudeLichSu/xacnhanchoilichsu9.dart';
import 'package:doan_ltdd_chk/choidon/chudeToanHoc/chudetoanhoc.dart';
import 'package:doan_ltdd_chk/screens/trangchu.dart';
import 'package:flutter/material.dart';

class NetxPageDiaLy extends StatefulWidget {
  const NetxPageDiaLy({super.key});

  @override
  State<NetxPageDiaLy> createState() => _NetxPageDiaLy();
}

class _NetxPageDiaLy extends State<NetxPageDiaLy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color(0xff152B42),
        child: Column(
          children: [
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
            Padding(padding: EdgeInsets.fromLTRB(0, 60, 0, 0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Câu Hỏi Lịch Sử",
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 30, 10, 20),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 15, 59, 95),
                border: Border(
                  top: BorderSide(width: 2.0, color: Color(0xFFFFDFDFDF)),
                  left: BorderSide(
                      width: 2.0, color: Color.fromARGB(255, 252, 252, 252)),
                  right: BorderSide(
                      width: 1.0, color: Color.fromARGB(255, 245, 243, 243)),
                  bottom: BorderSide(
                      width: 1.0, color: Color.fromARGB(255, 245, 244, 244)),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            MaterialButton(
                              onPressed: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const XacnhanDiaLy()));
                              }),
                              child: ClipRRect(
                                child: Container(
                                  color: Color.fromARGB(255, 12, 1, 73),
                                  width: 60,
                                  height: 100,
                                  child: Center(
                                      child: Text(
                                    'level 1',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontWeight: FontWeight.normal,
                                    ),
                                  )),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            MaterialButton(
                              onPressed: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const XacnhanDiaLy1()));
                              }),
                              child: ClipRRect(
                                child: Container(
                                  color: Color.fromARGB(255, 12, 1, 73),
                                  width: 60,
                                  height: 100,
                                  child: Center(
                                    child: Text(
                                      'level 2',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            MaterialButton(
                              onPressed: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const XacnhanDiaLy2()));
                              }),
                              child: ClipRRect(
                                child: Container(
                                  color: Color.fromARGB(255, 12, 1, 73),
                                  width: 60,
                                  height: 100,
                                  child: Center(
                                    child: Text(
                                      'level 3',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            MaterialButton(
                              onPressed: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const XacnhanDiaLy3()));
                              }),
                              child: ClipRRect(
                                child: Container(
                                  color: Color.fromARGB(255, 12, 1, 73),
                                  width: 60,
                                  height: 100,
                                  child: Center(
                                    child: Text(
                                      'level 4',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            MaterialButton(
                              onPressed: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const XacnhanDiaLy4()));
                              }),
                              child: ClipRRect(
                                child: Container(
                                  color: Color.fromARGB(255, 12, 1, 73),
                                  width: 60,
                                  height: 100,
                                  child: Center(
                                      child: Text(
                                    'level 5',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontWeight: FontWeight.normal,
                                    ),
                                  )),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            MaterialButton(
                              onPressed: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const XacnhanDiaLy5()));
                              }),
                              child: ClipRRect(
                                child: Container(
                                  color: Color.fromARGB(255, 12, 1, 73),
                                  width: 60,
                                  height: 100,
                                  child: Center(
                                    child: Text(
                                      'level 6',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            MaterialButton(
                              onPressed: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const XacnhanDiaLy6()));
                              }),
                              child: ClipRRect(
                                child: Container(
                                  color: Color.fromARGB(255, 12, 1, 73),
                                  width: 60,
                                  height: 100,
                                  child: Center(
                                    child: Text(
                                      'level 7',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            MaterialButton(
                              onPressed: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const XacnhanDiaLy7()));
                              }),
                              child: ClipRRect(
                                child: Container(
                                  color: Color.fromARGB(255, 12, 1, 73),
                                  width: 60,
                                  height: 100,
                                  child: Center(
                                    child: Text(
                                      'level 8',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            MaterialButton(
                              onPressed: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const XacnhanDiaLy8()));
                              }),
                              child: ClipRRect(
                                child: Container(
                                  color: Color.fromARGB(255, 12, 1, 73),
                                  width: 60,
                                  height: 100,
                                  child: Center(
                                      child: Text(
                                    'level 9',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontWeight: FontWeight.normal,
                                    ),
                                  )),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            MaterialButton(
                              onPressed: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const XacnhanDiaLy9()));
                              }),
                              child: ClipRRect(
                                child: Container(
                                  color: Color.fromARGB(255, 12, 1, 73),
                                  width: 60,
                                  height: 100,
                                  child: Center(
                                    child: Text(
                                      'level 10',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            MaterialButton(
                              onPressed: (() {}),
                              child: ClipRRect(
                                child: Container(
                                  color: Color.fromARGB(255, 12, 1, 73),
                                  width: 60,
                                  height: 100,
                                  child: Center(
                                    child: Text(
                                      'level 11',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            MaterialButton(
                              onPressed: (() {}),
                              child: ClipRRect(
                                child: Container(
                                  color: Color.fromARGB(255, 12, 1, 73),
                                  width: 60,
                                  height: 100,
                                  child: Center(
                                    child: Text(
                                      'level 12',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(
                      onPressed: (() {
                        Navigator.pop(
                          context,
                        );
                      }),
                      child: Text(
                        "<",
                        style: TextStyle(fontSize: 20),
                      ),
                      shape: CircleBorder(),
                      color: Colors.white,
                    ),
                    MaterialButton(
                      onPressed: (() {}),
                      child: ClipRRect(
                        child: Container(
                          color: Color.fromARGB(255, 12, 1, 73),
                          width: 120,
                          height: 50,
                          child: Center(
                            child: Text(
                              'Chơi',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Text(
                        ">",
                        style: TextStyle(fontSize: 20),
                      ),
                      shape: CircleBorder(),
                      color: Colors.white,
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
