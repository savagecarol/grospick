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
  String description2;

   @observable
  String description3;

   @observable
  String description4;

   @observable
 String discount;

    @observable
 String discount1;

    @observable
 String discount2;

    @observable
 String discount3;

     @observable
 String discount4;


  @observable
  List image;

    @observable
 String image2;

   @observable
 String image3;

   @observable
 String image4;


  @observable
  List mrp;

    @observable
  String mrp2;

  @observable
  String mrp3;

  @observable
  String mrp4;



@observable
  String name;

    @observable
  String pid;

  @observable
  List price;

   @observable
  String price2;

   @observable
  String price3;

   @observable
  String price4;

   @observable
  bool show;

  @observable
  List stock;

  
  @observable
  String stock2;

  @observable
  String stock3;

  @observable
  String stock4;

  @observable
  String subcategory;

  @observable
  String supercategory;

   @observable
  int variant;
}
