import 'package:doan_ltdd_chk/controllers/question_controller.dart';
import 'package:doan_ltdd_chk/giaodienchoi/progress_bar.dart';
import 'package:doan_ltdd_chk/models/Questions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:doan_ltdd_chk/constants.dart';
import 'question_card.dart';
import 'option.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Color(0xff152B42),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Progress_Bar(),
                SizedBox(
                  height: 50,
                ),
                Obx(
                  () => Text.rich(
                    TextSpan(
                      text:
                          "Question ${_questionController.questionNumber.value}",
                      style: TextStyle(color: Colors.white, fontSize: 40),
                      children: [
                        TextSpan(
                          text: "/${_questionController.questions.length}",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  thickness: 1.5,
                  color: Color.fromARGB(255, 99, 110, 177),
                ),
                Expanded(
                    child: PageView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        controller: _questionController.pageController,
                        onPageChanged: _questionController.updateTheQnNum,
                        itemCount: _questionController.questions.length,
                        itemBuilder: (context, index) => QuestionCard(
                              question: _questionController.questions[index],
                            ))),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
