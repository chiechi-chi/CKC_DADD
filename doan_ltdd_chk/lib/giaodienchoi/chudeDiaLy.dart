import 'package:doan_ltdd_chk/giaodienchoi/chudeLichSu.dart';
import 'package:doan_ltdd_chk/screens/choimotnguoi.dart';
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
            Padding(padding: EdgeInsets.fromLTRB(0, 180, 0, 0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Câu Hỏi Địa Lý",
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
                              onPressed: (() {}),
                              child: ClipRRect(
                                child: Container(
                                  color: Color.fromARGB(255, 12, 1, 73),
                                  width: 300,
                                  height: 300,
                                  child: Center(
                                      child: Text(
                                    'Chương 3',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontWeight: FontWeight.normal,
                                    ),
                                  )),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            // Text('10/10',
                            //     style: TextStyle(
                            //       color: Color.fromARGB(255, 255, 255, 255),
                            //       fontSize: 20,
                            //       fontWeight: FontWeight.normal,
                            //     ))
                          ],
                        ),
                      ),
                      //     Container(
                      //       child: Column(
                      //         children: [
                      //           MaterialButton(
                      //             onPressed: (() {}),
                      //             child: ClipRRect(
                      //               child: Container(
                      //                 color: Color.fromARGB(255, 12, 1, 73),
                      //                 width: 65,
                      //                 height: 100,
                      //                 child: Center(
                      //                   child: Text(
                      //                     'Vòng 10',
                      //                     style: TextStyle(
                      //                       color:
                      //                           Color.fromARGB(255, 255, 255, 255),
                      //                       fontSize: 15,
                      //                       fontWeight: FontWeight.normal,
                      //                     ),
                      //                   ),
                      //                 ),
                      //               ),
                      //               borderRadius: BorderRadius.circular(10),
                      //             ),
                      //           ),
                      //           Text('10/10',
                      //               style: TextStyle(
                      //                 color: Color.fromARGB(255, 255, 255, 255),
                      //                 fontSize: 20,
                      //                 fontWeight: FontWeight.normal,
                      //               ))
                      //         ],
                      //       ),
                      //     ),
                      //     Container(
                      //       child: Column(
                      //         children: [
                      //           MaterialButton(
                      //             onPressed: (() {}),
                      //             child: ClipRRect(
                      //               child: Container(
                      //                 color: Color.fromARGB(255, 12, 1, 73),
                      //                 width: 65,
                      //                 height: 100,
                      //                 child: Center(
                      //                   child: Text(
                      //                     'Vòng 11',
                      //                     style: TextStyle(
                      //                       color:
                      //                           Color.fromARGB(255, 255, 255, 255),
                      //                       fontSize: 15,
                      //                       fontWeight: FontWeight.normal,
                      //                     ),
                      //                   ),
                      //                 ),
                      //               ),
                      //               borderRadius: BorderRadius.circular(10),
                      //             ),
                      //           ),
                      //           Text('10/10',
                      //               style: TextStyle(
                      //                 color: Color.fromARGB(255, 255, 255, 255),
                      //                 fontSize: 20,
                      //                 fontWeight: FontWeight.normal,
                      //               ))
                      //         ],
                      //       ),
                      //     ),
                      //     Container(
                      //       child: Column(
                      //         children: [
                      //           MaterialButton(
                      //             onPressed: (() {}),
                      //             child: ClipRRect(
                      //               child: Container(
                      //                 color: Color.fromARGB(255, 12, 1, 73),
                      //                 width: 65,
                      //                 height: 100,
                      //                 child: Center(
                      //                   child: Text(
                      //                     'Vòng 12',
                      //                     style: TextStyle(
                      //                       color:
                      //                           Color.fromARGB(255, 255, 255, 255),
                      //                       fontSize: 15,
                      //                       fontWeight: FontWeight.normal,
                      //                     ),
                      //                   ),
                      //                 ),
                      //               ),
                      //               borderRadius: BorderRadius.circular(10),
                      //             ),
                      //           ),
                      //           Text('10/10',
                      //               style: TextStyle(
                      //                 color: Color.fromARGB(255, 255, 255, 255),
                      //                 fontSize: 20,
                      //                 fontWeight: FontWeight.normal,
                      //               ))
                      //         ],
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // SizedBox(
                      //   height: 20,
                      // ),
                      // Row(
                      //   children: [
                      //     Container(
                      //       child: Column(
                      //         children: [
                      //           MaterialButton(
                      //             onPressed: (() {}),
                      //             child: ClipRRect(
                      //               child: Container(
                      //                 color: Color.fromARGB(255, 12, 1, 73),
                      //                 width: 65,
                      //                 height: 100,
                      //                 child: Center(
                      //                     child: Text(
                      //                   'Vòng 13',
                      //                   style: TextStyle(
                      //                     color: Color.fromARGB(255, 255, 255, 255),
                      //                     fontWeight: FontWeight.normal,
                      //                   ),
                      //                 )),
                      //               ),
                      //               borderRadius: BorderRadius.circular(10),
                      //             ),
                      //           ),
                      //           Text('10/10',
                      //               style: TextStyle(
                      //                 color: Color.fromARGB(255, 255, 255, 255),
                      //                 fontSize: 20,
                      //                 fontWeight: FontWeight.normal,
                      //               ))
                      //         ],
                      //       ),
                      //     ),
                      //     Container(
                      //       child: Column(
                      //         children: [
                      //           MaterialButton(
                      //             onPressed: (() {}),
                      //             child: ClipRRect(
                      //               child: Container(
                      //                 color: Color.fromARGB(255, 12, 1, 73),
                      //                 width: 65,
                      //                 height: 100,
                      //                 child: Center(
                      //                   child: Text(
                      //                     'Vòng 14',
                      //                     style: TextStyle(
                      //                       color:
                      //                           Color.fromARGB(255, 255, 255, 255),
                      //                       fontSize: 15,
                      //                       fontWeight: FontWeight.normal,
                      //                     ),
                      //                   ),
                      //                 ),
                      //               ),
                      //               borderRadius: BorderRadius.circular(10),
                      //             ),
                      //           ),
                      //           Text('10/10',
                      //               style: TextStyle(
                      //                 color: Color.fromARGB(255, 255, 255, 255),
                      //                 fontSize: 20,
                      //                 fontWeight: FontWeight.normal,
                      //               ))
                      //         ],
                      //       ),
                      //     ),
                      //     Container(
                      //       child: Column(
                      //         children: [
                      //           MaterialButton(
                      //             onPressed: (() {}),
                      //             child: ClipRRect(
                      //               child: Container(
                      //                 color: Color.fromARGB(255, 12, 1, 73),
                      //                 width: 65,
                      //                 height: 100,
                      //                 child: Center(
                      //                   child: Text(
                      //                     'Vòng 15',
                      //                     style: TextStyle(
                      //                       color:
                      //                           Color.fromARGB(255, 255, 255, 255),
                      //                       fontSize: 15,
                      //                       fontWeight: FontWeight.normal,
                      //                     ),
                      //                   ),
                      //                 ),
                      //               ),
                      //               borderRadius: BorderRadius.circular(10),
                      //             ),
                      //           ),
                      //           Text('10/10',
                      //               style: TextStyle(
                      //                 color: Color.fromARGB(255, 255, 255, 255),
                      //                 fontSize: 20,
                      //                 fontWeight: FontWeight.normal,
                      //               ))
                      //         ],
                      //       ),
                      //     ),
                      //     Container(
                      //       child: Column(
                      //         children: [
                      //           MaterialButton(
                      //             onPressed: (() {}),
                      //             child: ClipRRect(
                      //               child: Container(
                      //                 color: Color.fromARGB(255, 12, 1, 73),
                      //                 width: 65,
                      //                 height: 100,
                      //                 child: Center(
                      //                   child: Text(
                      //                     'Vòng 16',
                      //                     style: TextStyle(
                      //                       color:
                      //                           Color.fromARGB(255, 255, 255, 255),
                      //                       fontSize: 15,
                      //                       fontWeight: FontWeight.normal,
                      //                     ),
                      //                   ),
                      //                 ),
                      //               ),
                      //               borderRadius: BorderRadius.circular(10),
                      //             ),
                      //           ),
                      //           Text('10/10',
                      //               style: TextStyle(
                      //                 color: Color.fromARGB(255, 255, 255, 255),
                      //                 fontSize: 20,
                      //                 fontWeight: FontWeight.normal,
                      //               ))
                      //         ],
                      //       ),
                      //     ),
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
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NetxPage()));
                      },
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
