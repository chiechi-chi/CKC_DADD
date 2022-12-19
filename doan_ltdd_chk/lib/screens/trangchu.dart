import 'package:doan_ltdd_chk/choidon/chudedomeo/choimotnguoi.dart';
import 'package:doan_ltdd_chk/screens/Rankingscreen.dart';
import 'package:doan_ltdd_chk/screens/shopbar.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'lichsu.dart';

import 'package:flutter/material.dart';
import 'choihainguoi.dart';
import 'rank.dart';
import 'package:doan_ltdd_chk/screens/setting_screen.dart';
import 'store_screen.dart';
import 'thongtinnhanvat.dart';
import 'sukien.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
        color: Color.fromARGB(255, 2, 10, 56),
        child: Column(
          children: [
            ShopBar(),
            Text(
              'CHK BOYS',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              color: Color.fromARGB(255, 8, 8, 8),
              width: MediaQuery.of(context).size.width * 0.8,
              height: 300,
              child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Giaodienrank(),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          'RANK',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(1)),
                      Image.asset(
                        'assets/h13.png',
                        width: 150,
                        height: 200,
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    onPressed: (() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChoiDon(),
                        ),
                      );
                    }),
                    child: ClipRRect(
                      child: Container(
                        color: Colors.white,
                        width: MediaQuery.of(context).size.width * 0.36,
                        height: MediaQuery.of(context).size.width * 0.4,
                        child: Column(
                          children: [
                            Padding(padding: EdgeInsets.only(top: 20)),
                            Center(
                                child: Text(
                              'Chơi một Người',
                              style: TextStyle(
                                color: Color.fromARGB(255, 77, 39, 39),
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                            Padding(padding: EdgeInsets.all(5)),
                            Image.asset(
                              'assets/h15.png',
                              width: 90,
                              height: 100,
                            ),
                          ],
                        ),
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Choihainguoi(),
                        ),
                      );
                    },
                    child: ClipRRect(
                      child: Column(
                        children: [
                          Container(
                            color: Color.fromARGB(255, 244, 243, 243),
                            width: MediaQuery.of(context).size.width * 0.35,
                            height: MediaQuery.of(context).size.width * 0.4,
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.only(top: 20)),
                                Center(
                                  child: Text(
                                    'Chơi Hai Người',
                                    style: TextStyle(
                                      color: Color.fromRGBO(15, 15, 15, 1),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.all(5)),
                                Image.asset(
                                  'assets/h12.png',
                                  width: 90,
                                  height: 100,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 90,
        child: SizedBox(
          height: 80,
          child: FloatingActionButton(
            child: Icon(
              Icons.info,
              size: 40,
            ),
            backgroundColor: Color.fromARGB(255, 40, 3, 105),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => infor(),
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
              IconButton(
                  onPressed: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => sukien(),
                      ),
                    );
                  }),
                  icon: Icon(Icons.flash_on)),
              IconButton(
                  onPressed: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Store(),
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
