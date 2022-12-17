import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class QuizUser {
  final String id;
  final String name;
  final String topic;
  final String levels;
  final String email;
  final int score;

  QuizUser({
    required this.id,
    required this.name,
    required this.topic,
    required this.levels,
    required this.email,
    required this.score,
  });

  QuizUser copyWith({
    String? id,
    String? name,
    String? topic,
    String? levels,
    String? email,
    int? score,
  }) {
    return QuizUser(
      id: id ?? this.id,
      name: name ?? this.name,
      topic: topic ?? this.topic,
      levels: levels ?? this.levels,
      email: email ?? this.email,
      score: score ?? this.score,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'name': name});
    result.addAll({'topic': topic});
    result.addAll({'levels': levels});
    result.addAll({'email': email});
    result.addAll({'score': score});

    return result;
  }

  factory QuizUser.fromMap(Map<String, dynamic> map) {
    return QuizUser(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      topic: map['topic'] ?? '',
      levels: map['levels'] ?? '',
      email: map['email'] ?? '',
      score: map['score']?.toInt() ?? 0,
    );
  }

  factory QuizUser.fromQueryDocumentSnapshot(QueryDocumentSnapshot snapshot) {
    final data = snapshot.data() as Map<String, dynamic>;
    final id = snapshot.id;
    data['id'] = id;
    return QuizUser.fromMap(data);
  }

  String toJson() => json.encode(toMap());

  factory QuizUser.fromJson(String source) =>
      QuizUser.fromMap(json.decode(source));

  @override
  String toString() {
    return 'QuizUser(id: $id, name: $name, topic: $topic, levels: $levels, email: $email, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is QuizUser &&
        other.id == id &&
        other.name == name &&
        other.topic == topic &&
        other.levels == levels &&
        other.email == email &&
        other.score == score;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        topic.hashCode ^
        levels.hashCode ^
        email.hashCode ^
        score.hashCode;
  }
}
