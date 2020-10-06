import 'package:json_annotation/json_annotation.dart';
import 'package:mobx/mobx.dart';
part 'promocode.g.dart';

@JsonSerializable()
class Promocode extends _Promocode with _$Promocode {
  static Promocode fromJson(Map<String, dynamic> json) =>
      _$PromocodeFromJson(json);

  static Map<String, dynamic> toJson(Promocode user) => _$PromocodeToJson(user);
}

abstract class _Promocode with Store {
  @observable
  String amount;
  @observable
  String name;
  @observable
  String status;
  @observable
  String percentage;
}
