import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:grospick/models/shop.dart';

class ShopService {
  ShopService._();

  factory ShopService.getInstance() => _instance;
  static final ShopService _instance = ShopService._();
  Firestore _firestore = Firestore.instance;

  // Future<Map<String, Product>> getProductList({String category}) async {
  //   QuerySnapshot querySnapshot = await _firestore
  //       .collection('products')
  //       .where('category', whereIn: [category]).getDocuments();
  //   Map<String, Product> productList = Map<String, Product>();
  //   querySnapshot.documents.forEach((DocumentSnapshot documentSnapshot) {
  //     if (documentSnapshot.data != null) {
  //       documentSnapshot.data.remove('createdAt');
  //       Product product =
  //           Product.fromJson(jsonDecode(jsonEncode(documentSnapshot.data)));
  //       if (product.id == null) product.id = documentSnapshot.documentID;
  //       productList.addAll({product.id: product});
  //     }
  //   });
  //   return productList;
  // }

  Future<Map<String, Shop>> getCityCategoryCollection(
      String city, String category) async {
    QuerySnapshot querySnapshot = await _firestore
        .collection('city')
        .document(city)
        .collection(category)
        .getDocuments();
    Map<String, Shop> shopList = Map<String, Shop>();

    querySnapshot.documents.forEach((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.data != null) {
        if (documentSnapshot.documentID == 'image') {
          print(1);
        } else {
          Shop shop =
              Shop.fromJson(jsonDecode(jsonEncode(documentSnapshot.data)));
          if (shop.uid == null) shop.uid = documentSnapshot.documentID;
          shopList.addAll({shop.uid: shop});
        }
      }
    });
    return shopList;
  }

 
 
  
}
