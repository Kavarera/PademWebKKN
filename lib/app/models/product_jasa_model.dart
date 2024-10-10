import 'package:cloud_firestore/cloud_firestore.dart';
import '../core/enums/product_dan_jasa_enum.dart';

class ProductJasaFirestoreModel {
  final String id;
  final String contact;
  final String content;
  final String imageUrl;
  final String title;
  final double harga;
  final ProductJasaEnum category;

  ProductJasaFirestoreModel({
    required this.id,
    required this.contact,
    required this.content,
    required this.imageUrl,
    required this.title,
    required this.harga,
    required this.category,
  });

  factory ProductJasaFirestoreModel.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    return ProductJasaFirestoreModel(
      id: doc.id,
      contact: data['contact'] ?? '',
      content: data['content'] ?? '',
      imageUrl: data['imageUrl'] ?? '',
      title: data['title'] ?? '',
      harga: (data['harga'] ?? 0).toDouble(),
      category: ProductJasaEnum.values[data['category'] ?? 0],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'id': id,
      'contact': contact,
      'content': content,
      'imageUrl': imageUrl,
      'title': title,
      'harga': harga,
      'category': category.value,
    };
  }
}
