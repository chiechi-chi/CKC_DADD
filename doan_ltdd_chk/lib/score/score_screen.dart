// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../constants.dart';
// import '../controllers/question_controller.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:doan_ltdd_chk/controllers/question_controller.dart';

// class ScoreScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     QuestionController _qnController = Get.put(QuestionController());
//     return Scaffold(
//       body: Stack(
//         fit: StackFit.expand,
//         children: [
//           SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
//           Column(
//             children: [
//               Spacer(flex: 3),
//               Text(
//                 "Score",
//                 style: TextStyle(fontSize: 30, color: Colors.white),
//               ),
//               Spacer(),
//               Text(
//                 "${_qnController.correctAns}/${_qnController.questions.length}",
//                 style: TextStyle(fontSize: 30, color: Colors.white),
//               ),
//               Spacer(flex: 3),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
import 'package:doan_ltdd_chk/choidon/chudedomeo/xacnhanchoi.dart';
import 'package:doan_ltdd_chk/models/Questions.dart';
import 'package:doan_ltdd_chk/screens/giaodienchoi.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key, required this.score, required this.questions})
      : super(key: key);

  final int score;
  final List<Question> questions;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Container(
          color: Color(0xff152B42),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Result:  $score/ ${questions.length}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
              SizedBox(height: 40),
              ActionButton(
                title: 'Play Again',
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => QuizScreen(
                        totalTime: 60,
                        questions: questions,
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
