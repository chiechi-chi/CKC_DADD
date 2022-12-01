import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class sigup extends StatefulWidget {
  const sigup({
    Key? key,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _sigup();
  }
}

class _sigup extends State<sigup> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Color(0xff152B42),
      ),
      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text(
          'Đăng kí tài khoản',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        Row(
          children: [
            const Text(
              'Email:',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(55, 20, 0, 0),
              width: MediaQuery.of(context).size.width * 0.75,
              child: TextField(
                style: TextStyle(color: Color.fromARGB(255, 20, 20, 20)),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide(color: Colors.white)),
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.black)),
              ),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.all(10)),
        Row(
          children: [
            const Text(
              'Mật khẩu:',
              style: TextStyle(
                  color: Color.fromARGB(255, 247, 244, 244),
                  fontWeight: FontWeight.normal),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
              width: MediaQuery.of(context).size.width * 0.7,
              child: TextField(
                obscureText: true,
                style: TextStyle(color: Color.fromARGB(255, 19, 18, 18)),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide(color: Colors.white)),
                    hintText: 'Mật khẩu',
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 19, 19, 19))),
              ),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.all(10)),
        Container(
          padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(
                      Color.fromARGB(255, 51, 10, 146).withOpacity(0.8)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)))),
              onPressed: () async {
                try {
                  final newuser = _auth.createUserWithEmailAndPassword(
                      email: _emailController.text,
                      password: _passwordController.text);
                  if (newuser != null) {
                    Navigator.pop(context, 'Đăng Ký thành công!');
                  } else {
                    final snackBar =
                        SnackBar(content: Text('Tài khoản này không hợp lệ'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                } catch (e) {
                  final snackBar = SnackBar(content: Text('Có lỗi xảy ra!'));
                }
              },
              child: const Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text('Đăng Kí'),
              )),
        ),
      ]),
    ));
  }
}
