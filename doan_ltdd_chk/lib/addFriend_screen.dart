import 'package:flutter/material.dart';

class ThemBanbe extends StatefulWidget {
  const ThemBanbe({super.key});

  @override
  State<ThemBanbe> createState() => _ThemBanbe();
}

class _ThemBanbe extends State<ThemBanbe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color(0xff152B42),
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 180, 0, 0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(0),
                child: const Text(
                  'Thêm bạn bè',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
                child: TextField(
                  style: new TextStyle(
                      fontSize: 20.0, color: Color.fromARGB(255, 20, 20, 20)),
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(),
                      hintText: "Nhập id bạn bè",
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Color.fromARGB(255, 15, 15, 15))),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Tìm kiếm',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.normal,
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
