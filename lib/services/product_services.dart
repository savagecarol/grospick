import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:grospick/models/product.dart';
import 'package:grospick/models/promocode.dart';

class ProductService {
  ProductService._();

  factory ProductService.getInstance() => _instance;
  static final ProductService _instance = ProductService._();
  Firestore _firestore = Firestore.instance;

  Future<Map<String, Product>> getProductList(String email) async {
    QuerySnapshot querySnapshot =
        await _firestore.collection('products').getDocuments();
    Map<String, Product> productList = Map<String, Product>();
    querySnapshot.documents.forEach((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.data != null) {
        Product product =
            Product.fromJson(jsonDecode(jsonEncode(documentSnapshot.data)));
        if (product.id == null) product.id = documentSnapshot.documentID;
        if (product.email == email) productList.addAll({product.id: product});
      }
    });
    return productList;
  }

  Future<List> fetchCity(String a, String getter) async {
    List l;
    DocumentSnapshot documentSnapshot =
        await _firestore.collection('city').document(a).get();
    print(documentSnapshot.data);
    l = documentSnapshot.data['items'];
    return l;
  }

  Future<Promocode> fetchPromoCOde() async {
    DocumentSnapshot documentSnapshot = await _firestore
        .collection('users')
        .document('j9v0kuyjdBBAcdcJOIS5')
        .get();
    Promocode promocode = Promocode.fromJson(documentSnapshot.data);
    return promocode;
  }
}
