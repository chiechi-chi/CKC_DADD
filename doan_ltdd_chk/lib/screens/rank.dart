import 'package:flutter/material.dart';

class Giaodienrank extends StatefulWidget {
  const Giaodienrank({super.key});

  @override
  State<Giaodienrank> createState() => _Giaodienrank();
}

class _Giaodienrank extends State<Giaodienrank> {
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
                'Bảng Xếp Hạng',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 30, 0, 0),
              child: Column(
                children: [
                  Container(
                    width: 350,
                    height: 400,
                    color: Color(0xff152B39),
                    child: Column(
                      children: [
                        new SizedBox(
                          width: 200,
                          height: 250.0,
                          child: Container(
                              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                              child: Image(
                                image: AssetImage('assets/223.png'),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'Ghép đổi',
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
