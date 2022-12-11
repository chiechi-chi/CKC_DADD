// import 'package:doan_ltdd_chk/controllers/question_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:websafe_svg/websafe_svg.dart';

// import '../../constants.dart';

// class Progress_Bar extends StatelessWidget {
//   const Progress_Bar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         children: [
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
//             child: Column(
//               children: [
//                 Container(
//                   width: double.infinity,
//                   height: 35,
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Color(0xFF3F4768), width: 3),
//                     borderRadius: BorderRadius.circular(50),
//                   ),
//                   child: GetBuilder<QuestionController>(
//                     init: QuestionController(),
//                     builder: (controller) {
//                       return Stack(
//                         children: [
//                           // LayoutBuilder provide us the available space for the conatiner
//                           // constraints.maxWidth needed for our animation
//                           LayoutBuilder(
//                             builder: (context, constraints) => Container(
//                               // from 0 to 1 it takes 60s
//                               width: constraints.maxWidth *
//                                   controller.animation.value,
//                               decoration: BoxDecoration(
//                                 gradient: kPrimaryGradient,
//                                 borderRadius: BorderRadius.circular(50),
//                               ),
//                             ),
//                           ),
//                           Positioned.fill(
//                             child: Padding(
//                               padding: const EdgeInsets.symmetric(
//                                   horizontal: kDefaultPadding / 2),
//                               child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Text(
//                                     "${(controller.animation.value * 30).round()} sec",
//                                     style: TextStyle(color: Colors.white),
//                                   ),
//                                   WebsafeSvg.asset("assets/icons/clock.svg",
//                                       color: Colors.white),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       );
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
