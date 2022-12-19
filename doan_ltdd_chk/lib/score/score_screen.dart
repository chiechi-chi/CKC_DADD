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
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doan_ltdd_chk/choidon/chudeLichSu/xacnhanchoitoanhoc.dart';
import 'package:doan_ltdd_chk/choidon/chudedomeo/xacnhanchoi.dart';
import 'package:doan_ltdd_chk/models/Questions.dart';
import 'package:doan_ltdd_chk/models/action_button.dart';
import 'package:doan_ltdd_chk/screens/giaodienchoi.dart';
import 'package:doan_ltdd_chk/screens/trangchu.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../screens/lichsu.dart';
import '../screens/setting_screen.dart';
import '../screens/store_screen.dart';
import '../screens/sukien.dart';
import '../screens/thongtinnhanvat.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({Key? key, required this.score, required this.questions})
      : super(key: key);

  final int score;
  final List<Question> questions;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
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
                'Result:  ${widget.score}/ ${widget.questions.length}',
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
                        questions: widget.questions,
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
      floatingActionButton: Container(
        width: 90,
        child: SizedBox(
          height: 80,
          child: FloatingActionButton(
            child: Icon(
              Icons.home,
              size: 40,
            ),
            backgroundColor: Color.fromARGB(255, 40, 3, 105),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => home(),
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

  @override
  void initState() {
    super.initState();
    // final provider = context.read<QuizProvider>();
    // provider.updateHighscore(widget.score);
    _updateHighScore();
  }

  Future<void> _updateHighScore() async {
    final authUser = FirebaseAuth.instance.currentUser;

    if (authUser == null) return;

    final userRef =
        FirebaseFirestore.instance.collection('users').doc(authUser.uid);

    final userDoc = await userRef.get();

    if (userDoc.exists) {
      final user = userDoc.data();

      if (user == null) return;

      final lastHighscore = user['score'];

      if (lastHighscore >= widget.score) {
        return;
      }

      userRef.update({'score': widget.score});
      return;
    }

    userRef.set({
      'email': authUser.email,
      'photoUrl': authUser.photoURL,
      'score': widget.score,
      'name': authUser.displayName,
    });
  }
}
