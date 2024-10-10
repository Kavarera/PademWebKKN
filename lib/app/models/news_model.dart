import 'package:cloud_firestore/cloud_firestore.dart';

class NewsModelFirestore {
  final String id;
  final String createdAt;
  final String description;
  final String imageUrl;
  final String title;

  NewsModelFirestore({
    required this.id,
    required this.createdAt,
    required this.description,
    required this.imageUrl,
    required this.title,
  });

  factory NewsModelFirestore.fromDocument(DocumentSnapshot doc) {
    return NewsModelFirestore(
      id: doc.id,
      createdAt: doc['createdAt'] as String,
      description: doc['description'] as String,
      imageUrl: doc['imageUrl'] as String,
      title: doc['title'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'createdAt': createdAt,
      'description': description,
      'imageUrl': imageUrl,
      'title': title,
    };
  }
}
