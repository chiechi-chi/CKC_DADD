import 'package:doan_ltdd_chk/lichsu.dart';
import 'package:doan_ltdd_chk/store_screen.dart';
import 'package:doan_ltdd_chk/trangchu.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class setting extends StatefulWidget {
  const setting({super.key});

  @override
  State<setting> createState() => _setting();
}

class _setting extends State<setting> {
  double val = 20.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Color(0xff152B42),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(padding: EdgeInsets.fromLTRB(0, 100, 0, 0)),
          Text(
            'Cài Đặt',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
          Container(
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1, color: Color.fromARGB(255, 20, 59, 90))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 100, 20, 0),
                  ),
                  Icon(
                    Icons.volume_up,
                    size: 30,
                    color: Colors.white,
                  ),
                  Slider(
                    value: val,
                    max: 100,
                    divisions: 10,
                    label: val.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        val = value;
                      });
                    },
                  )
                ],
              )),
          Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 100, 0, 0),
              ),
              Text(
                'Kết Nối:',
                style: TextStyle(color: Colors.white),
              ),
              Container(
                  width: 300,
                  height: 40,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton.icon(
                    icon: Icon(
                      Icons.facebook,
                      size: 30,
                    ),
                    label: const Text('Facebook'),
                    onPressed: () {},
                  ))
            ]),
          ),
          Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10, 80, 0, 0),
              ),
              Text(
                'Kết Nối:',
                style: TextStyle(color: Colors.white),
              ),
              Container(
                  width: 300,
                  height: 40,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton.icon(
                      icon: Icon(
                        Icons.g_mobiledata,
                        size: 30,
                      ),
                      label: const Text('Google'),
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(255, 228, 41, 27)))))
            ]),
          ),
          Container(
            child: Center(
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 80, 0, 0),
                ),
                Container(
                    width: 180,
                    height: 50,
                    padding: const EdgeInsets.all(10),
                    child: ElevatedButton(
                      child: const Text('Chính Sách Bảo Mật'),
                      onPressed: () {},
                    )),
                Container(
                    width: 180,
                    height: 50,
                    padding: const EdgeInsets.all(10),
                    child: ElevatedButton(
                      child: const Text('Hỗ trợ dịch vụ '),
                      onPressed: () {},
                    ))
              ]),
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
          ElevatedButton(
            onPressed: () => FirebaseAuth.instance.signOut(),
            child: const Text("Đăng Xuất"),
          )
        ]),
      ),
      floatingActionButton: Container(
        width: 90,
        child: SizedBox(
          height: 80,
          child: FloatingActionButton(
            child: Icon(
              Icons.home,
              size: 40,
            ),
            backgroundColor: Color.fromARGB(255, 40, 3, 105),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => home(),
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (() {}), icon: Icon(Icons.flash_on)),
              IconButton(
                  onPressed: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => home(),
                      ),
                    );
                  }),
                  icon: Icon(Icons.shop_two)),
              IconButton(
                  onPressed: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => history(),
                      ),
                    );
                  }),
                  icon: Icon(Icons.history)),
              IconButton(
                  onPressed: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => setting(),
                      ),
                    );
                  }),
                  icon: Icon(Icons.settings)),
            ],
          ),
        ),
      ),
    );
  }
}
