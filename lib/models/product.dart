import 'package:json_annotation/json_annotation.dart';
import 'package:mobx/mobx.dart';
part 'product.g.dart';

@JsonSerializable()
class Product extends _Product with _$Product {
  static Product fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  static Map<String, dynamic> toJson(Product user) => _$ProductToJson(user);
  }

abstract class _Product with Store {

  @observable
  String id;

  @observable
  String category;
  
  @observable
  String city;
  
  @observable
  List description;

   @observable
 String discount;

   @observable
 String email;

  @observable
  List image;

  @observable
  List mrp;

@observable
  String name;

    @observable
  String pid;

  @observable
  List price;


   @observable
  bool show;


  @observable
  List stock;


  @observable
  String sub_category;

  @observable
  String super_category;

    @observable
  int variant;

    @observable
  String vendorName;
}
