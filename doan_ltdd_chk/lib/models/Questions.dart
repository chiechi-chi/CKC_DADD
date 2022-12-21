import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class Question {
  final String id;
  final String question;
  final String correctAnswer;
  final List<String> answers;
  final int level;
  final int topic;
  final int vong;
  Question({
    required this.id,
    required this.question,
    required this.correctAnswer,
    required this.answers,
    required this.level,
    required this.topic,
    required this.vong,
  });

  Question copyWith({
    String? id,
    String? question,
    String? correctAnswer,
    List<String>? answers,
    int? level,
    int? topic,
    int? vong,
  }) {
    return Question(
      id: id ?? this.id,
      question: question ?? this.question,
      correctAnswer: correctAnswer ?? this.correctAnswer,
      answers: answers ?? this.answers,
      level: level ?? this.level,
      topic: topic ?? this.topic,
      vong: vong ?? this.vong,
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
    result.addAll({'vong': vong});

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
      vong: map['vong']?.toInt() ?? 0,
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
    return 'Question(id: $id, question: $question, correctAnswer: $correctAnswer, answers: $answers, level: $level, topic: $topic, vong: $vong)';
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
        other.topic == topic &&
        other.vong == vong;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        question.hashCode ^
        correctAnswer.hashCode ^
        answers.hashCode ^
        level.hashCode ^
        topic.hashCode ^
        vong.hashCode;
  }
}
