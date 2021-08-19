//import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class Post {
  Post({required this.date, required this.title, required this.body, this.key});

  factory Post.fromSnapshot(DataSnapshot snap) => Post(
      body: snap.value['body'] as String,
      date: snap.value['date'] as int,
      key: snap.key,
      title: snap.value['title'] as String);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': body,
      'date': date,
      'key': key,
      'title': title
    };
  }

  final int date;
  final String? key;
  final String title;
  final String body;
}
