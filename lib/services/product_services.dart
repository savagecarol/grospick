

import 'package:cloud_firestore/cloud_firestore.dart';


class ProductService {
  ProductService._();

  factory ProductService.getInstance() => _instance;
  static final ProductService _instance = ProductService._();
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

  Future<List> fetchCategory() async {
    QuerySnapshot querySnapshot =
        await _firestore.collection('city').getDocuments();
            List l;
    querySnapshot.documents.forEach((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.documentID == 'categories') {
            l= documentSnapshot.data['items'];
      }
    });
    return l;
  }
}
