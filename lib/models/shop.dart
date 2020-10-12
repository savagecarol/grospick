import 'package:json_annotation/json_annotation.dart';
import 'package:mobx/mobx.dart';
part 'shop.g.dart';

@JsonSerializable()
class Shop extends _Shop with _$Shop {
  static Shop fromJson(Map<String, dynamic> json) => _$ShopFromJson(json);

  static Map<String, dynamic> toJson(Shop user) => _$ShopToJson(user);
}

abstract class _Shop with Store {



 @observable
  String businessNumber;

   @observable
  List categories;


    @observable
  String city;


    @observable
  String closetime;


 @observable
  List days;


 @observable
  String docId;

   @observable
  String email;

   @observable
  String image;

   @observable
  String isVerified;

  @observable
  String latitude;

     @observable
  String location;

        @observable
    String longitude;

     @observable
    String name;

      @observable
    String opentime;

      @observable
     String phone;

     
  @observable
    List restaurantCategories;

    @observable
    String role;

  @observable
    int timestamp;

 @observable
  String uid;

}
