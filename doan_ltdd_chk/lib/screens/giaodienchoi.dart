import 'dart:async';
import 'package:doan_ltdd_chk/models/Questions.dart';
import 'package:doan_ltdd_chk/score/score_screen.dart';
import 'package:doan_ltdd_chk/screens/shopbar.dart';
import 'package:doan_ltdd_chk/screens/trangchu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:websafe_svg/websafe_svg.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key, required this.totalTime, required this.questions})
      : super(key: key);
  final int totalTime;
  final List<Question> questions;
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late int _currentTime;
  late Timer _timer;
  int _currentIndex = 0;
  String _selectedAnswer = '';
  int _score = 0;

  @override
  void initState() {
    super.initState();
    _currentTime = widget.totalTime;

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      print(_currentTime);
      setState(() {
        _currentTime -= 1;
      });

      if (_currentTime == 0) {
        // pushResultScreen(context);
        _timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = widget.questions[_currentIndex];
    return Scaffold(
      body: Container(
        color: Color(0xff152B42),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 50, 16, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ShopBar(),
              Container(
                child: Row(children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => home()));
                    },
                    child: Icon(
                      Icons.arrow_circle_left_rounded,
                      color: Colors.white,
                      size: 35,
                    ),
                  )
                ]),
              ),
              SizedBox(height: 20),
              // Hiển thị câu hỏi
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Câu ${_currentIndex + 1}',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 15, 59, 95),
                  border: Border(
                    top: BorderSide(width: 2.0, color: Color(0xFFFFDFDFDF)),
                    left: BorderSide(
                        width: 2.0, color: Color.fromARGB(255, 252, 252, 252)),
                    right: BorderSide(
                        width: 1.0, color: Color.fromARGB(255, 245, 243, 243)),
                    bottom: BorderSide(
                        width: 1.0, color: Color.fromARGB(255, 245, 244, 244)),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      currentQuestion.question,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      LinearProgressIndicator(
                        value: _currentTime / widget.totalTime,
                      ),
                      Center(
                        child: Text(
                          _currentTime.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    final answer = currentQuestion.answers[index];
                    return AnswerTile(
                      isSelected: answer == _selectedAnswer,
                      answer: answer,
                      correctAnswer: currentQuestion.correctAnswer,
                      onTap: () {
                        setState(() {
                          _selectedAnswer = answer;
                        });

                        if (answer == currentQuestion.correctAnswer) {
                          _score++;
                        }

                        Future.delayed(Duration(milliseconds: 200), () {
                          if (_currentIndex == widget.questions.length - 1) {
                            pushResultScreen(context);
                            return;
                          }
                          setState(() {
                            _currentIndex++;
                            _selectedAnswer = '';
                          });
                        });
                      },
                    );
                  },
                  itemCount: currentQuestion.answers.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void pushResultScreen(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => ResultScreen(
          questions: widget.questions,
          score: _score,
        ),
      ),
    );
  }
}

class AnswerTile extends StatelessWidget {
  const AnswerTile({
    Key? key,
    required this.isSelected,
    required this.answer,
    required this.correctAnswer,
    required this.onTap,
  }) : super(key: key);

  final bool isSelected;
  final String answer;
  final String correctAnswer;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor,
      child: ListTile(
        onTap: () => onTap(),
        title: Text(
          answer,
          style: TextStyle(
            fontSize: 18,
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }

  Color get cardColor {
    if (!isSelected) return Colors.white;

    if (answer == correctAnswer) {
      return Colors.teal;
    }

    return Colors.redAccent;
  }
}
