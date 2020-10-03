// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return Category()..ofName = json['ofName'] as List;
}

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'ofName': instance.ofName,
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Category on _Category, Store {
  final _$ofNameAtom = Atom(name: '_Category.ofName');

  @override
  List get ofName {
    _$ofNameAtom.context.enforceReadPolicy(_$ofNameAtom);
    _$ofNameAtom.reportObserved();
    return super.ofName;
  }

  @override
  set ofName(List value) {
    _$ofNameAtom.context.conditionallyRunInAction(() {
      super.ofName = value;
      _$ofNameAtom.reportChanged();
    }, _$ofNameAtom, name: '${_$ofNameAtom.name}_set');
  }
}
