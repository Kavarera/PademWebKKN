import 'package:cloud_firestore/cloud_firestore.dart';
import '../core/enums/product_dan_jasa_enum.dart';

class ProductJasaFirestoreModel {
  final String contact;
  final String description;
  final String imageUrl;
  final String name;
  final double price;
  final ProductJasaEnum type;

  ProductJasaFirestoreModel({
    required this.contact,
    required this.description,
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.type,
  });

  factory ProductJasaFirestoreModel.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    return ProductJasaFirestoreModel(
      contact: data['contact'] ?? '',
      description: data['description'] ?? '',
      imageUrl: data['imageUrl'] ?? '',
      name: data['name'] ?? '',
      price: (data['price'] ?? 0).toDouble(),
      type: ProductJasaEnum.values[data['type'] ?? 0],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'contact': contact,
      'description': description,
      'imageUrl': imageUrl,
      'name': name,
      'price': price,
      'type': type.value,
    };
  }
}
