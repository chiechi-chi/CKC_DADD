import 'package:flutter/material.dart';
import 'package:doan_ltdd_chk/models/Questions.dart';
import 'option.dart';
import 'Body.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    Key? key,
    required this.question,
  }) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Container(
              child: Text(
                question.question,
                style: TextStyle(color: Colors.black),
              ),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Options(),
            Options(),
            Options(),
            Options(),
          ],
        )
      ],
    );
  }
}
