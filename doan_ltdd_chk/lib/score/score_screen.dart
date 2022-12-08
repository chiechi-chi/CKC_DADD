import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants.dart';
import '../controllers/question_controller.dart';
import 'package:flutter_svg/svg.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Container(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              Spacer(flex: 3),
              Text(
                "Score",
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
              Spacer(),
              Text(
                "${_qnController.correcAns}/${_qnController.questions.length}",
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
              Spacer(flex: 3),
            ],
          )
        ],
      ),
    );
  }
}
