// import 'package:flutter/material.dart';
// import 'package:doan_ltdd_chk/models/Questions.dart';
// import 'package:get/get.dart';
// import 'option.dart';
// import 'Body.dart';
// import 'package:doan_ltdd_chk/controllers/question_controller.dart';

// class QuestionCard extends StatelessWidget {
//   const QuestionCard({
//     Key? key,
//     required this.question,
//   }) : super(key: key);

//   final Question question;

//   @override
//   Widget build(BuildContext context) {
//     QuestionController _controller = Get.put(QuestionController());
//     return Column(
//       children: [
//         Column(
//           children: [
//             Container(
//               child: Text(
//                 question.question,
//                 style: TextStyle(color: Colors.black),
//               ),
//               padding: EdgeInsets.all(20),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(25),
//               ),
//             ),
//           ],
//         ),
//         Column(
//           children: [
//             ...List.generate(
//                 question.options.length,
//                 (index) => Options(
//                       text: question.options[index],
//                       index: index,
//                       press: () => _controller.checkAns(question, index),
//                     ))
//           ],
//         )
//       ],
//     );
//   }
// }
