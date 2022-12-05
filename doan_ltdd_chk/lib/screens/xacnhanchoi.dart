import 'package:flutter/material.dart';

import 'giaodienchoi.dart';

class Xacnhan extends StatefulWidget {
  const Xacnhan({super.key});

  @override
  State<Xacnhan> createState() => _Xacnhan();
}

class _Xacnhan extends State<Xacnhan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color(0xff152B42),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
              child: Column(
                children: [
                  Container(
                    width: 350,
                    height: 450,
                    color: Color(0xff152B39),
                    child: Column(children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                        child: ClipRRect(
                          child: Row(),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
                        child: Row(
                          children: [
                            Container(
                              color: Color.fromARGB(255, 12, 1, 73),
                              width: 300,
                              height: 330,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                                child: Column(children: [
                                  Text(
                                    'Vòng #',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontWeight: FontWeight.normal,
                                        fontSize: 20),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(30),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Hoàn thành:',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                              fontWeight: FontWeight.normal,
                                              fontSize: 20),
                                        ),
                                        Text(
                                          '0/10',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                              fontWeight: FontWeight.normal,
                                              fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(30),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                giaodienchoigame(),
                                          ),
                                        );
                                      },
                                      child: Text(
                                        'Vào chơi',
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  )
                                ]),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
