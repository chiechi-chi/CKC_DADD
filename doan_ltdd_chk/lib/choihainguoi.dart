import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Choihainguoi extends StatefulWidget {
  const Choihainguoi({super.key});

  @override
  State<Choihainguoi> createState() => _ChoihainguoiState();
}

class _ChoihainguoiState extends State<Choihainguoi> {
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
              child: const Text(
                'Chơi 2 người',
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
                        new SizedBox(
                          width: 250.0,
                          height: 250.0,
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
                                  'Người chơi 1',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.normal),
                                ),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'VS',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        new SizedBox(
                          width: 250.0,
                          height: 250.0,
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
                                  'Người chơi 2',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.normal),
                                ),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'Mời',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'Sẵn sàng',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
