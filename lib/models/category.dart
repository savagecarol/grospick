import 'package:json_annotation/json_annotation.dart';
import 'package:mobx/mobx.dart';
part 'category.g.dart';

@JsonSerializable()

class Category extends _Category with _$Category {

  static Category fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);

  static Map<String, dynamic> toJson(Category user) => _$CategoryToJson(user);

}

abstract class _Category with Store {
  
    @observable
  List ofName;
}
