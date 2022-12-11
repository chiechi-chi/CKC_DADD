import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

// class Question {
//   final String id;
//   final String questions;
//   final List<String> Answerd;
//   final String CorrectAnswer;
//   final int level;
//   final int topic;

//   Question(
//       {required this.id,
//       required this.questions,
//       required this.Answerd,
//       required this.CorrectAnswer,
//       required this.level,
//       required this.topic});

//   Question copyWith({
//     String? id,
//     String? question,
//     List<String>? answers,
//     String? correctAnswer,
//   }) {
//     return Question(
//         id: id ?? this.id,
//         questions: question ?? this.questions,
//         Answerd: answers ?? this.Answerd,
//         CorrectAnswer: correctAnswer ?? this.CorrectAnswer,
//         level: level ?? this.level,
//         topic: level ?? this.topic);
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'id': id,
//       'question': questions,
//       'answers': Answerd,
//       'correctAnswer': CorrectAnswer,
//       'level': level,
//       'topic': topic
//     };
//   }

//   factory Question.fromMap(Map<String, dynamic> map) {
//     return Question(
//         id: map['id'],
//         questions: map['question'],
//         Answerd: List<String>.from(map['answers']),
//         CorrectAnswer: map['correctAnswer'],
//         level: map['level'],
//         topic: map['topic']);
//   }

//   factory Question.fromQueryDocumentSnapshot(QueryDocumentSnapshot snapshot) {
//     final data = snapshot.data() as Map<String, dynamic>;
//     final id = snapshot.id;
//     data['id'] = id;
//     return Question.fromMap(data);
//   }
//   String toJson() => json.encode(toMap());

//   factory Question.fromJson(String source) =>
//       Question.fromMap(json.decode(source));

//   @override
//   String toString() {
//     return 'Question(id: $id, question: $questions, answers: $Answerd, correctAnswer: $CorrectAnswer, level: $level, topic: $topic)';
//   }

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;

//     return other is Question &&
//         other.id == id &&
//         other.questions == questions &&
//         listEquals(other.Answerd, Answerd) &&
//         other.CorrectAnswer == CorrectAnswer &&
//         other.level == level &&
//         other.topic == topic;
//   }

//   @override
//   int get hashCode {
//     return id.hashCode ^
//         questions.hashCode ^
//         Answerd.hashCode ^
//         CorrectAnswer.hashCode ^
//         level.hashCode ^
//         topic.hashCode;
//   }
// }

class Question {
  final String id;
  final String question;
  final String correctAnswer;
  final List<String> answers;
  final int level;
  final int topic;
  Question({
    required this.id,
    required this.question,
    required this.correctAnswer,
    required this.answers,
    required this.level,
    required this.topic,
  });

  Question copyWith({
    String? id,
    String? question,
    String? correctAnswer,
    List<String>? answers,
    int? level,
    int? topic,
  }) {
    return Question(
      id: id ?? this.id,
      question: question ?? this.question,
      correctAnswer: correctAnswer ?? this.correctAnswer,
      answers: answers ?? this.answers,
      level: level ?? this.level,
      topic: topic ?? this.topic,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'question': question});
    result.addAll({'correctAnswer': correctAnswer});
    result.addAll({'answers': answers});
    result.addAll({'level': level});
    result.addAll({'topic': topic});

    return result;
  }

  factory Question.fromMap(Map<String, dynamic> map) {
    return Question(
      id: map['id'] ?? '',
      question: map['question'] ?? '',
      correctAnswer: map['correctAnswer'] ?? '',
      answers: List<String>.from(map['answers']),
      level: map['level']?.toInt() ?? 0,
      topic: map['topic']?.toInt() ?? 0,
    );
  }

  factory Question.fromQueryDocumentSnapshot(QueryDocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    final id = snapshot.id;
    data['id'] = id;
    return Question.fromMap(data);
  }

  String toJson() => json.encode(toMap());

  factory Question.fromJson(String source) =>
      Question.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Question(id: $id, question: $question, correctAnswer: $correctAnswer, answers: $answers, level: $level, topic: $topic)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Question &&
        other.id == id &&
        other.question == question &&
        other.correctAnswer == correctAnswer &&
        listEquals(other.answers, answers) &&
        other.level == level &&
        other.topic == topic;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        question.hashCode ^
        correctAnswer.hashCode ^
        answers.hashCode ^
        level.hashCode ^
        topic.hashCode;
  }
}

// List<Question> question = [
//   Question(
//       id: 1,
//       question:
//           "Trạng nguyên nhanh trí ai bì, đã từng ứng đối khi đi xứ tàu, Một đời trong sạch trước sau, Tiền vô chủ quyết vào chầu nộp kho",
//       correctAnswer: "Mạc Đỉnh Chi",
//       answers: ['Mạc Đỉnh Chi', 'Trạng Tí', 'Chu Văn An', 'Lê Lai'],
//       level: 1,
//       topic: 1),
//   Question(
//       id: 2,
//       question:
//           "Tcnkcnì, đã từng ứng đối khi đi xứ tàu, Một đời trong sạch trước sau, Tiền vô chủ quyết vào chầu nộp kho",
//       correctAnswer: "Mạc Đỉnh Chi",
//       answers: ['Mạc Đỉnh Chi', 'Trạng Tí', 'Chu Văn An', 'Lê Lai'],
//       level: 1,
//       topic: 1),
//   Question(
//       id: 3,
//       question:
//           "Trạng nguyê21312342 bì, đã từng ứng đối khi đi xứ tàu, Một đời trong sạch trước sau, Tiền vô chủ quyết vào chầu nộp kho",
//       correctAnswer: "Mạc Đỉnh Chi",
//       answers: ['Mạc Đỉnh Chi', 'Trạng Tí', 'Chu Văn An', 'Lê Lai'],
//       level: 1,
//       topic: 1),
//   Question(
//       id: 4,
//       question:
//           "Trạng nguyên nhanh trí ai bì, đã từng ứng đối khi đi xứ tàu, Một đời trong sạch trước sau, Tiền vô chủ quyết vào chầu nộp kho",
//       correctAnswer: "Mạc Đỉnh Chi",
//       answers: ['Mạc Đỉnh Chi', 'Trạng Tí', 'Chu Văn An', 'Lê Lai'],
//       level: 1,
//       topic: 1),
//   Question(
//       id: 5,
//       question:
//           "Trạng nguyên nhanh trí ai bì, đã từng ứng đối khi đi xứ tàu, Một đời trong sạch trước sau, Tiền vô chủ quyết vào chầu nộp kho",
//       correctAnswer: "Mạc Đỉnh Chi",
//       answers: ['Mạc Đỉnh Chi', 'Trạng Tí', 'Chu Văn An', 'Lê Lai'],
//       level: 1,
//       topic: 1),
//   Question(
//       id: 6,
//       question:
//           "Trạng nguyên nhanh trí ai bì, đã từng ứng đối khi đi xứ tàu, Một đời trong sạch trước sau, Tiền vô chủ quyết vào chầu nộp kho",
//       correctAnswer: "Mạc Đỉnh Chi",
//       answers: ['Mạc Đỉnh Chi', 'Trạng Tí', 'Chu Văn An', 'Lê Lai'],
//       level: 1,
//       topic: 1),
// ];
// // const List sample_data = [
// //   {
// //     "id": 1,
// //     "question": "Kết quả của 3 + 5 là:",
// //     "options": ['5', '7', '8', '10'],
// //     "answer_index": 2,
// //   },
// //   {
// //     "id": 2,
// //     "question": "Số cần điền vào: ….. – 2 = 3 là:",
// //     "options": ['1', '5', '9', '20'],
// //     "answer_index": 1,
// //   },
// //   {
// //     "id": 3,
// //     "question": "Sắp xếp các số: 0, 5, 2, 10 theo thứ tự từ bé đến lớn:",
// //     "options": [
// //       ' 10, 5, 2, 0',
// //       '2 , 0 , 10 , 5',
// //       ' 0 , 2 , 5 , 10',
// //       '5,2,0,10'
// //     ],
// //     "answer_index": 2,
// //   },
// //   {
// //     "id": 4,
// //     "question": "Dấu cần điền vào 4 ….2 = 6 là:",
// //     "options": ['+', '-', 'x', '='],
// //     "answer_index": 0,
// //   },
// //   {
// //     "id": 5,
// //     "question": "Phép tính nào sai?",
// //     "options": ['7 – 5 = 2', '4 + 4 = 9', '10 – 9 = 1', '1+1 =2'],
// //     "answer_index": 1,
// //   },
// //   {
// //     "id": 6,
// //     "question": " Số lớn nhất trong các số: 1, 9, 4, 7 là:",
// //     "options": ['1', '9', '4', '7'],
// //     "answer_index": 1,
// //   },
// //   {
// //     "id": 7,
// //     "question": "Số bé nhất có một chữ số là:",
// //     "options": ['0', '1', '2', '3'],
// //     "answer_index": 0,
// //   },
// //   {
// //     "id": 8,
// //     "question": "Kết quả của phép tính: 10 – 8 + 3 là:",
// //     "options": ['30', '20', '10', '5'],
// //     "answer_index": 3,
// //   },
// //   {
// //     "id": 9,
// //     "question": "Số bé nhất trong các số: 8, 3, 10, 6 là:",
// //     "options": ['3', '8', '5', '6'],
// //     "answer_index": 0,
// //   },
// //   {
// //     "id": 10,
// //     "question": "Số lớn nhất có một chữ số là:",
// //     "options": ['20', '40', '20', '9'],
// //     "answer_index": 3,
// //   },
// // ];
