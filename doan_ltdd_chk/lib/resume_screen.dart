import 'package:flutter/material.dart';

class ResumeScreen extends StatefulWidget {
  const ResumeScreen({Key? key}) : super(key: key);

  @override
  State<ResumeScreen> createState() => _ResumeScreenState();
}

class _ResumeScreenState extends State<ResumeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 80, 30, 100),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Color(0xff152B39),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(padding: EdgeInsets.fromLTRB(20, 50, 20, 20)),
                Container(
                  width: 200,
                  height: 250,
                  child: Image.asset('assets/h20.png'),
                ),
                Padding(padding: EdgeInsets.fromLTRB(20, 60, 20, 20)),
                Container(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 16, 66, 106),
                        onPrimary: Colors.white),
                    onPressed: () async {},
                    label: Text(
                      'Tiếp tục',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    icon: Icon(Icons.play_circle_outline),
                  ),
                ),
                Padding(padding: EdgeInsets.fromLTRB(20, 20, 20, 20)),
                Container(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 16, 66, 106),
                        onPrimary: Colors.white),
                    onPressed: () async {},
                    label: Text(
                      'Thoát',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    icon: Icon(Icons.output),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
