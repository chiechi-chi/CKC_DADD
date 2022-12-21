import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doan_ltdd_chk/choidon/chudeToanHoc/xacnhanchoitoanhoc.dart';
import 'package:doan_ltdd_chk/models/Questions.dart';
import 'package:doan_ltdd_chk/models/action_button.dart';
import 'package:doan_ltdd_chk/screens/giaodienchoi.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class XacnhanDiaLy2 extends StatefulWidget {
  const XacnhanDiaLy2({super.key});

  @override
  State<XacnhanDiaLy2> createState() => _XacnhanDiaLy2();
}

class _XacnhanDiaLy2 extends State<XacnhanDiaLy2> {
//  QuestionController _qnController = Get.put(QuestionController());
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
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
              child: Column(
                children: [
                  Container(
                    width: 350,
                    height: 450,
                    color: Color(0xff152B39),
                    child: Column(children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                        child: ClipRRect(
                          child: Row(),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
                        child: Row(
                          children: [
                            Container(
                              color: Color.fromARGB(255, 12, 1, 73),
                              width: 300,
                              height: 330,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                                child: Column(children: [
                                  Text(
                                    'Vòng 3',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontWeight: FontWeight.normal,
                                        fontSize: 20),
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  StreamBuilder(
                                    stream: FirebaseFirestore.instance
                                        .collection('Questions')
                                        .where("levels", isEqualTo: 1)
                                        .where("topics", isEqualTo: 3.2)
                                        .snapshots(),
                                    builder: (context, snapshot) {
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: CircularProgressIndicator(),
                                        );
                                      }
                                      final questionDocs = snapshot.data!.docs;
                                      final question = questionDocs
                                          .map((e) => Question
                                              .fromQueryDocumentSnapshot(e))
                                          .toList();

                                      return Column(
                                        children: [
                                          ActionButton(
                                            onTap: () {
                                              Navigator.of(context).push(
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      QuizScreen(
                                                    totalTime: 60,
                                                    questions: question,
                                                  ),
                                                ),
                                              );
                                            },
                                            title: 'Dễ',
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  StreamBuilder(
                                    stream: FirebaseFirestore.instance
                                        .collection('Questions')
                                        .where("levels", isEqualTo: 2)
                                        .where("topics", isEqualTo: 3.2)
                                        .snapshots(),
                                    builder: (context, snapshot) {
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: CircularProgressIndicator(),
                                        );
                                      }
                                      final questionDocs = snapshot.data!.docs;
                                      final question = questionDocs
                                          .map((e) => Question
                                              .fromQueryDocumentSnapshot(e))
                                          .toList();

                                      return Column(
                                        children: [
                                          ActionButton(
                                            onTap: () {
                                              Navigator.of(context).push(
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      QuizScreen(
                                                    totalTime: 60,
                                                    questions: question,
                                                  ),
                                                ),
                                              );
                                            },
                                            title: 'Thường',
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  StreamBuilder(
                                    stream: FirebaseFirestore.instance
                                        .collection('Questions')
                                        .where("levels", isEqualTo: 3)
                                        .where("topics", isEqualTo: 3.2)
                                        .snapshots(),
                                    builder: (context, snapshot) {
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: CircularProgressIndicator(),
                                        );
                                      }
                                      final questionDocs = snapshot.data!.docs;
                                      final question = questionDocs
                                          .map((e) => Question
                                              .fromQueryDocumentSnapshot(e))
                                          .toList();

                                      return Column(
                                        children: [
                                          ActionButton(
                                            onTap: () {
                                              Navigator.of(context).push(
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      QuizScreen(
                                                    totalTime: 60,
                                                    questions: question,
                                                  ),
                                                ),
                                              );
                                            },
                                            title: 'Khó',
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ]),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
