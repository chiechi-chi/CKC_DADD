import 'package:flutter/material.dart';

class sukien extends StatefulWidget {
  const sukien({super.key});

  @override
  State<sukien> createState() => _sukienState();
}

class _sukienState extends State<sukien> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color(0xff152B42),
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
                child: Row(
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          '←',
                          style: TextStyle(fontSize: 20),
                        )),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.all(30),
              child: const Text(
                'Sự kiện',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    color: Color.fromARGB(255, 43, 25, 89),
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.all(20)),
                        new SizedBox(
                          width: 350.0,
                          height: 180.0,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll<Color>(
                                          Color.fromARGB(255, 30, 22, 117)
                                              .withOpacity(0.8)),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0)))),
                              onPressed: () => {},
                              child: const Padding(
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                child: Text(
                                  'Sự kiện 1',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal),
                                ),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '16h 15m 30s',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(20)),
                        new SizedBox(
                          width: 350.0,
                          height: 180.0,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll<Color>(
                                          Color.fromARGB(255, 30, 22, 117)
                                              .withOpacity(0.8)),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30.0)))),
                              onPressed: () => {},
                              child: const Padding(
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                child: Text(
                                  'Sự kiện 2',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal),
                                ),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '16h 15m 30s',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(20)),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
