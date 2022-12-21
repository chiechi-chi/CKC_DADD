import 'dart:math';
import 'dart:ui';

import 'package:doan_ltdd_chk/screens/trangchu.dart';
import 'package:flutter/material.dart';

class Store extends StatefulWidget {
  const Store({
    super.key,
  });

  @override
  State<Store> createState() => _Store();
}

class _Store extends State<Store> {
  @override
  Widget build(BuildContext context) {
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
            Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
            Row(children: [
              Padding(padding: EdgeInsets.all(3)),
              Container(
                width: 20,
                height: 30,
                child: Image.asset('assets/11.png'),
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 0, 5, 0)),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 243, 245, 247)),
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.all(3)),
                    Image.asset(
                      'assets/11.png',
                      width: 15,
                      height: 20,
                    ),
                    Padding(padding: EdgeInsets.all(3)),
                    Image.asset(
                      'assets/11.png',
                      width: 15,
                      height: 15,
                    ),
                    Padding(padding: EdgeInsets.all(3)),
                    Image.asset(
                      'assets/11.png',
                      width: 15,
                      height: 15,
                    ),
                    Padding(padding: EdgeInsets.all(3)),
                    Image.asset(
                      'assets/11.png',
                      width: 15,
                      height: 15,
                    ),
                    Padding(padding: EdgeInsets.all(3)),
                    Image.asset(
                      'assets/11.png',
                      width: 15,
                      height: 15,
                    ),
                  ],
                ),
              ),
              Container(
                  child: IconButton(
                icon: Icon(Icons.add_box_outlined),
                color: Colors.white,
                onPressed: () {},
              )),
              Padding(padding: EdgeInsets.fromLTRB(80, 0, 0, 0)),
              Container(
                width: 120,
                height: 30,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
                    left: BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
                    right: BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F)),
                    bottom: BorderSide(width: 1.0, color: Color(0xFFFF7F7F7F)),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(padding: EdgeInsets.all(1)),
                    Image.asset(
                      'assets/22.png',
                      width: 20,
                      height: 15,
                    ),
                    Padding(padding: EdgeInsets.all(1)),
                    Text(
                      '2000',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      onPressed: (() {}),
                      icon: Icon(Icons.shopping_cart_checkout_outlined),
                      color: Colors.white,
                      iconSize: 18,
                    ),
                  ],
                ),
              ),
            ]),
            Column(
              children: [
                Padding(padding: EdgeInsets.fromLTRB(0, 50, 0, 0)),
                Text(
                  'Cửa Hàng',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
                Text(
                  'Kim Cương',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 0)),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Column(children: [
                                  Row(
                                    children: [
                                      Column(children: [
                                        SizedBox.fromSize(
                                          size: Size(70,
                                              80), // button width and height

                                          child: Material(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color.fromARGB(255, 45, 186,
                                                239), // button color
                                            child: InkWell(
                                              splashColor:
                                                  Colors.green, // splash color
                                              onTap: () {}, // button pressed
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: <Widget>[
                                                  ImageIcon(AssetImage(
                                                      'assets/22.png')),
                                                  Row(
                                                    children: [
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  5)),
                                                      Text(
                                                        '10',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal),
                                                      ),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  5)),
                                                      Container(
                                                        width: 20,
                                                        height: 20,
                                                        child: Image.asset(
                                                          'assets/22.png',
                                                          color: Colors.black,
                                                        ),
                                                      )
                                                    ],
                                                  ) // icon
                                                  // text
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '10.000đ',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ]),
                                      Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              15, 0, 10, 0)),
                                      Column(children: [
                                        SizedBox.fromSize(
                                          size: Size(70,
                                              80), // button width and height

                                          child: Material(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color.fromARGB(255, 45, 186,
                                                239), // button color
                                            child: InkWell(
                                              splashColor:
                                                  Colors.green, // splash color
                                              onTap: () {}, // button pressed
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: <Widget>[
                                                  ImageIcon(AssetImage(
                                                      'assets/22.png')),
                                                  Row(
                                                    children: [
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  5)),
                                                      Text(
                                                        '50',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal),
                                                      ),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  5)),
                                                      Container(
                                                        width: 20,
                                                        height: 20,
                                                        child: Image.asset(
                                                          'assets/22.png',
                                                          color: Colors.black,
                                                        ),
                                                      )
                                                    ],
                                                  ) // icon
                                                  // text
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '50.000đ',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ]),
                                      Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              15, 0, 10, 0)),
                                      Column(children: [
                                        SizedBox.fromSize(
                                          size: Size(70,
                                              80), // button width and height

                                          child: Material(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color.fromARGB(255, 45, 186,
                                                239), // button color
                                            child: InkWell(
                                              splashColor:
                                                  Colors.green, // splash color
                                              onTap: () {}, // button pressed
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: <Widget>[
                                                  ImageIcon(AssetImage(
                                                      'assets/22.png')),
                                                  Row(
                                                    children: [
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  3)),
                                                      Text(
                                                        '100',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal),
                                                      ),
                                                      Padding(
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  0, 10, 0, 0)),
                                                      Container(
                                                        width: 30,
                                                        height: 20,
                                                        child: Image.asset(
                                                          'assets/22.png',
                                                          color: Colors.black,
                                                        ),
                                                      )
                                                    ],
                                                  ) // icon
                                                  // text
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '100.000đ',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ]),
                                      Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(5, 0, 20, 0)),
                                      Column(children: [
                                        SizedBox.fromSize(
                                          size: Size(70,
                                              80), // button width and height

                                          child: Material(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color.fromARGB(255, 45, 186,
                                                239), // button color
                                            child: InkWell(
                                              splashColor: Colors.green,
                                              // splash color
                                              onTap: () {}, // button pressed
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: <Widget>[
                                                  ImageIcon(AssetImage(
                                                      'assets/22.png')),
                                                  Row(
                                                    children: [
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  5)),
                                                      Text(
                                                        '500',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal),
                                                      ),
                                                      Padding(
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  0, 10, 3, 0)),
                                                      Container(
                                                        width: 20,
                                                        height: 20,
                                                        child: Image.asset(
                                                          'assets/22.png',
                                                          color: Colors.black,
                                                        ),
                                                      )
                                                    ],
                                                  ) // icon
                                                  // text
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '500.000đ',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ]),
                                    ],
                                  ),
                                ]),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 0)),
                  ],
                ),
                Text(
                  'Trợ Giúp',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
                Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Column(children: [
                                  Row(
                                    children: [
                                      Column(children: [
                                        SizedBox.fromSize(
                                          size: Size(70,
                                              80), // button width and height

                                          child: Material(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color.fromARGB(255, 240, 245,
                                                247), // button color
                                            child: InkWell(
                                              splashColor:
                                                  Colors.green, // splash color
                                              onTap: () {}, // button pressed
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: <Widget>[
                                                  Image(
                                                    image: AssetImage(
                                                        'assets/11.png'),
                                                    width: 20,
                                                    height: 30,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  3)),
                                                      Text(
                                                        '500',
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    22,
                                                                    22,
                                                                    22),
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal),
                                                      ),
                                                      Padding(
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  0, 10, 0, 0)),
                                                      Container(
                                                        width: 30,
                                                        height: 20,
                                                        child: Image.asset(
                                                          'assets/11.png',
                                                        ),
                                                      )
                                                    ],
                                                  ) // icon
                                                  // text
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '100.000đ',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ]),
                                      Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              15, 0, 10, 0)),
                                      Column(children: [
                                        SizedBox.fromSize(
                                          size: Size(70,
                                              80), // button width and height

                                          child: Material(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color.fromARGB(255, 240, 245,
                                                247), // button color
                                            child: InkWell(
                                              splashColor:
                                                  Colors.green, // splash color
                                              onTap: () {}, // button pressed
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: <Widget>[
                                                  Image(
                                                    image: AssetImage(
                                                        'assets/11.png'),
                                                    width: 20,
                                                    height: 30,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  3)),
                                                      Text(
                                                        '500',
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    22,
                                                                    22,
                                                                    22),
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal),
                                                      ),
                                                      Padding(
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  0, 10, 0, 0)),
                                                      Container(
                                                        width: 30,
                                                        height: 20,
                                                        child: Image.asset(
                                                          'assets/11.png',
                                                        ),
                                                      )
                                                    ],
                                                  ) // icon
                                                  // text
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '100.000đ',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ]),
                                      Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              15, 0, 10, 0)),
                                      Column(children: [
                                        SizedBox.fromSize(
                                          size: Size(70,
                                              80), // button width and height

                                          child: Material(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color.fromARGB(255, 240, 245,
                                                247), // button color
                                            child: InkWell(
                                              splashColor:
                                                  Colors.green, // splash color
                                              onTap: () {}, // button pressed
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: <Widget>[
                                                  Image(
                                                    image: AssetImage(
                                                        'assets/11.png'),
                                                    width: 20,
                                                    height: 30,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  3)),
                                                      Text(
                                                        '500',
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    22,
                                                                    22,
                                                                    22),
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal),
                                                      ),
                                                      Padding(
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  0, 10, 0, 0)),
                                                      Container(
                                                        width: 30,
                                                        height: 20,
                                                        child: Image.asset(
                                                          'assets/11.png',
                                                        ),
                                                      )
                                                    ],
                                                  ) // icon
                                                  // text
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '100.000đ',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ]),
                                      Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(5, 0, 20, 0)),
                                      Column(children: [
                                        SizedBox.fromSize(
                                          size: Size(70,
                                              80), // button width and height

                                          child: Material(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color.fromARGB(255, 240, 245,
                                                247), // button color
                                            child: InkWell(
                                              splashColor:
                                                  Colors.green, // splash color
                                              onTap: () {}, // button pressed
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: <Widget>[
                                                  Image(
                                                    image: AssetImage(
                                                        'assets/11.png'),
                                                    width: 20,
                                                    height: 30,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  3)),
                                                      Text(
                                                        '500',
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    22,
                                                                    22,
                                                                    22),
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal),
                                                      ),
                                                      Padding(
                                                          padding: EdgeInsets
                                                              .fromLTRB(
                                                                  0, 10, 0, 0)),
                                                      Container(
                                                        width: 30,
                                                        height: 20,
                                                        child: Image.asset(
                                                          'assets/11.png',
                                                        ),
                                                      )
                                                    ],
                                                  ) // icon
                                                  // text
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '100.000đ',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ]),
                                    ],
                                  ),
                                ]),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 0)),
                    Row(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [],
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                Text(
                  'Vật phẩm',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Column(children: [
                                  Row(
                                    children: [
                                      Column(children: [
                                        SizedBox.fromSize(
                                          size: Size(70,
                                              70), // button width and height

                                          child: Material(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color.fromARGB(255, 45, 186,
                                                239), // button color
                                            child: InkWell(
                                              splashColor:
                                                  Colors.green, // splash color
                                              onTap: () {}, // button pressed
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: <Widget>[
                                                  Image.asset('assets/h8.jpg')
                                                  // text
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(padding: EdgeInsets.all(10)),
                                        Text(
                                          '10.000đ',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ]),
                                      Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              50, 0, 10, 0)),
                                      Column(children: [
                                        SizedBox.fromSize(
                                          size: Size(70,
                                              70), // button width and height

                                          child: Material(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color.fromARGB(255, 45, 186,
                                                239), // button color
                                            child: InkWell(
                                              splashColor:
                                                  Colors.green, // splash color
                                              onTap: () {}, // button pressed
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: <Widget>[
                                                  Image.asset('assets/h9.jpg')
                                                  // text
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(padding: EdgeInsets.all(10)),
                                        Text(
                                          '10.000đ',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ]),
                                      Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              46, 0, 10, 0)),
                                      Column(children: [
                                        SizedBox.fromSize(
                                          size: Size(70,
                                              70), // button width and height

                                          child: Material(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color.fromARGB(255, 45, 186,
                                                239), // button color
                                            child: InkWell(
                                              splashColor:
                                                  Colors.green, // splash color
                                              onTap: () {}, // button pressed
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: <Widget>[
                                                  Image.asset('assets/h10.jpg')
                                                  // text
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(padding: EdgeInsets.all(10)),
                                        Text(
                                          '10.000đ',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ]),
                                    ],
                                  ),
                                ]),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 0)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
