import 'package:flutter/material.dart';

class giaodienchoigame extends StatefulWidget {
  const giaodienchoigame({super.key});

  @override
  State<giaodienchoigame> createState() => _giaodienchoigameState();
}

class _giaodienchoigameState extends State<giaodienchoigame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: Color(0xff152B42)),
        child: Column(children: [
          Padding(padding: EdgeInsets.all(20)),
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
              Padding(padding: EdgeInsets.all(20)),
              Text(
                'Câu #',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Padding(padding: EdgeInsets.all(20)),
              Image.asset(
                "assets/h1.jpg",
                width: 300,
                fit: BoxFit.cover,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 16, 66, 106),
                            onPrimary: Colors.white),
                        onPressed: () {},
                        child: Text('Trợ giúp 1')),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 16, 66, 106),
                            onPrimary: Colors.white),
                        onPressed: () {},
                        child: Text('Trợ giúp 2')),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 16, 66, 106),
                            onPrimary: Colors.white),
                        onPressed: () {},
                        child: Text('Trợ giúp 3')),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 16, 66, 106),
                            onPrimary: Colors.white),
                        onPressed: () {},
                        child: Text('Trợ giúp 4')),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 40, 0, 0)),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 16, 66, 106),
                                onPrimary: Colors.white),
                            onPressed: () {},
                            child: Text('A: Abc')),
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(0, 0, 140, 0)),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 16, 66, 106),
                                onPrimary: Colors.white),
                            onPressed: () {},
                            child: Text('B: Bcd')),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 16, 66, 106),
                                onPrimary: Colors.white),
                            onPressed: () {},
                            child: Text('C: Xyz')),
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(0, 0, 140, 0)),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 16, 66, 106),
                                onPrimary: Colors.white),
                            onPressed: () {},
                            child: Text('D: Axy')),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 16, 66, 106),
                            onPrimary: Colors.white),
                        onPressed: () {},
                        child: Text('Tiếp tục')),
                  ),
                ],
              )
            ],
          )
        ]),
      ),
    );
  }
}
