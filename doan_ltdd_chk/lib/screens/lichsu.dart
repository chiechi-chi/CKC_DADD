import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class history extends StatefulWidget {
  const history({super.key});

  @override
  State<history> createState() => _historyState();
}

class _historyState extends State<history> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.only(top: 50),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Color(0xff152B42),
        ),
        child: Column(children: [
          Text(
            'Lịch Sử',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          Padding(padding: EdgeInsets.all(20)),
          Container(
              decoration: BoxDecoration(
                  border: Border.all(
                width: 1,
                color: Colors.grey,
              )),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(right: 10),
                    child: SizedBox(
                      height: 170,
                      width: 10,
                      child: Container(),
                    ),
                  ),
                  Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsets.only(top: 20)),
                          Text(
                            "Vòng",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          Text(
                            "Điểm Số:",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          Text("Thời Gian:",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25)),
                          Text("Ngày:",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25)),
                        ]),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 120,
                      ),
                      Text("Bắt Đầu Lại",
                          style: TextStyle(color: Colors.white, fontSize: 25)),
                    ],
                  )
                ],
              ))
        ]),
      ),
    );
  }
}
