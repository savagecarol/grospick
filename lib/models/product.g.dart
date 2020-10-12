// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) {
  return Product()
    ..id = json['id'] as String
    ..category = json['category'] as String
    ..city = json['city'] as String
    ..description = json['description'] as List
    ..discount = json['discount'] as String
    ..email = json['email'] as String
    ..image = json['image'] as List
    ..mrp = json['mrp'] as List
    ..name = json['name'] as String
    ..pid = json['pid'] as String
    ..price = json['price'] as List
    ..show = json['show'] as bool
    ..stock = json['stock'] as List
    ..sub_category = json['sub_category'] as String
    ..super_category = json['super_category'] as String
    ..variant = json['variant'] as int
    ..vendorName = json['vendorName'] as String;
}

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'city': instance.city,
      'description': instance.description,
      'discount': instance.discount,
      'email': instance.email,
      'image': instance.image,
      'mrp': instance.mrp,
      'name': instance.name,
      'pid': instance.pid,
      'price': instance.price,
      'show': instance.show,
      'stock': instance.stock,
      'sub_category': instance.sub_category,
      'super_category': instance.super_category,
      'variant': instance.variant,
      'vendorName': instance.vendorName,
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Product on _Product, Store {
  final _$idAtom = Atom(name: '_Product.id');

  @override
  String get id {
    _$idAtom.context.enforceReadPolicy(_$idAtom);
    _$idAtom.reportObserved();
    return super.id;
  }

  @override
  set id(String value) {
    _$idAtom.context.conditionallyRunInAction(() {
      super.id = value;
      _$idAtom.reportChanged();
    }, _$idAtom, name: '${_$idAtom.name}_set');
  }

  final _$categoryAtom = Atom(name: '_Product.category');

  @override
  String get category {
    _$categoryAtom.context.enforceReadPolicy(_$categoryAtom);
    _$categoryAtom.reportObserved();
    return super.category;
  }

  @override
  set category(String value) {
    _$categoryAtom.context.conditionallyRunInAction(() {
      super.category = value;
      _$categoryAtom.reportChanged();
    }, _$categoryAtom, name: '${_$categoryAtom.name}_set');
  }

  final _$cityAtom = Atom(name: '_Product.city');

  @override
  String get city {
    _$cityAtom.context.enforceReadPolicy(_$cityAtom);
    _$cityAtom.reportObserved();
    return super.city;
  }

  @override
  set city(String value) {
    _$cityAtom.context.conditionallyRunInAction(() {
      super.city = value;
      _$cityAtom.reportChanged();
    }, _$cityAtom, name: '${_$cityAtom.name}_set');
  }

  final _$descriptionAtom = Atom(name: '_Product.description');

  @override
  List get description {
    _$descriptionAtom.context.enforceReadPolicy(_$descriptionAtom);
    _$descriptionAtom.reportObserved();
    return super.description;
  }

  @override
  set description(List value) {
    _$descriptionAtom.context.conditionallyRunInAction(() {
      super.description = value;
      _$descriptionAtom.reportChanged();
    }, _$descriptionAtom, name: '${_$descriptionAtom.name}_set');
  }

  final _$discountAtom = Atom(name: '_Product.discount');

  @override
  String get discount {
    _$discountAtom.context.enforceReadPolicy(_$discountAtom);
    _$discountAtom.reportObserved();
    return super.discount;
  }

  @override
  set discount(String value) {
    _$discountAtom.context.conditionallyRunInAction(() {
      super.discount = value;
      _$discountAtom.reportChanged();
    }, _$discountAtom, name: '${_$discountAtom.name}_set');
  }

  final _$emailAtom = Atom(name: '_Product.email');

  @override
  String get email {
    _$emailAtom.context.enforceReadPolicy(_$emailAtom);
    _$emailAtom.reportObserved();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.context.conditionallyRunInAction(() {
      super.email = value;
      _$emailAtom.reportChanged();
    }, _$emailAtom, name: '${_$emailAtom.name}_set');
  }

  final _$imageAtom = Atom(name: '_Product.image');

  @override
  List get image {
    _$imageAtom.context.enforceReadPolicy(_$imageAtom);
    _$imageAtom.reportObserved();
    return super.image;
  }

  @override
  set image(List value) {
    _$imageAtom.context.conditionallyRunInAction(() {
      super.image = value;
      _$imageAtom.reportChanged();
    }, _$imageAtom, name: '${_$imageAtom.name}_set');
  }

  final _$mrpAtom = Atom(name: '_Product.mrp');

  @override
  List get mrp {
    _$mrpAtom.context.enforceReadPolicy(_$mrpAtom);
    _$mrpAtom.reportObserved();
    return super.mrp;
  }

  @override
  set mrp(List value) {
    _$mrpAtom.context.conditionallyRunInAction(() {
      super.mrp = value;
      _$mrpAtom.reportChanged();
    }, _$mrpAtom, name: '${_$mrpAtom.name}_set');
  }

  final _$nameAtom = Atom(name: '_Product.name');

  @override
  String get name {
    _$nameAtom.context.enforceReadPolicy(_$nameAtom);
    _$nameAtom.reportObserved();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.context.conditionallyRunInAction(() {
      super.name = value;
      _$nameAtom.reportChanged();
    }, _$nameAtom, name: '${_$nameAtom.name}_set');
  }

  final _$pidAtom = Atom(name: '_Product.pid');

  @override
  String get pid {
    _$pidAtom.context.enforceReadPolicy(_$pidAtom);
    _$pidAtom.reportObserved();
    return super.pid;
  }

  @override
  set pid(String value) {
    _$pidAtom.context.conditionallyRunInAction(() {
      super.pid = value;
      _$pidAtom.reportChanged();
    }, _$pidAtom, name: '${_$pidAtom.name}_set');
  }

  final _$priceAtom = Atom(name: '_Product.price');

  @override
  List get price {
    _$priceAtom.context.enforceReadPolicy(_$priceAtom);
    _$priceAtom.reportObserved();
    return super.price;
  }

  @override
  set price(List value) {
    _$priceAtom.context.conditionallyRunInAction(() {
      super.price = value;
      _$priceAtom.reportChanged();
    }, _$priceAtom, name: '${_$priceAtom.name}_set');
  }

  final _$showAtom = Atom(name: '_Product.show');

  @override
  bool get show {
    _$showAtom.context.enforceReadPolicy(_$showAtom);
    _$showAtom.reportObserved();
    return super.show;
  }

  @override
  set show(bool value) {
    _$showAtom.context.conditionallyRunInAction(() {
      super.show = value;
      _$showAtom.reportChanged();
    }, _$showAtom, name: '${_$showAtom.name}_set');
  }

  final _$stockAtom = Atom(name: '_Product.stock');

  @override
  List get stock {
    _$stockAtom.context.enforceReadPolicy(_$stockAtom);
    _$stockAtom.reportObserved();
    return super.stock;
  }

  @override
  set stock(List value) {
    _$stockAtom.context.conditionallyRunInAction(() {
      super.stock = value;
      _$stockAtom.reportChanged();
    }, _$stockAtom, name: '${_$stockAtom.name}_set');
  }

  final _$sub_categoryAtom = Atom(name: '_Product.sub_category');

  @override
  String get sub_category {
    _$sub_categoryAtom.context.enforceReadPolicy(_$sub_categoryAtom);
    _$sub_categoryAtom.reportObserved();
    return super.sub_category;
  }

  @override
  set sub_category(String value) {
    _$sub_categoryAtom.context.conditionallyRunInAction(() {
      super.sub_category = value;
      _$sub_categoryAtom.reportChanged();
    }, _$sub_categoryAtom, name: '${_$sub_categoryAtom.name}_set');
  }

  final _$super_categoryAtom = Atom(name: '_Product.super_category');

  @override
  String get super_category {
    _$super_categoryAtom.context.enforceReadPolicy(_$super_categoryAtom);
    _$super_categoryAtom.reportObserved();
    return super.super_category;
  }

  @override
  set super_category(String value) {
    _$super_categoryAtom.context.conditionallyRunInAction(() {
      super.super_category = value;
      _$super_categoryAtom.reportChanged();
    }, _$super_categoryAtom, name: '${_$super_categoryAtom.name}_set');
  }

  final _$variantAtom = Atom(name: '_Product.variant');

  @override
  int get variant {
    _$variantAtom.context.enforceReadPolicy(_$variantAtom);
    _$variantAtom.reportObserved();
    return super.variant;
  }

  @override
  set variant(int value) {
    _$variantAtom.context.conditionallyRunInAction(() {
      super.variant = value;
      _$variantAtom.reportChanged();
    }, _$variantAtom, name: '${_$variantAtom.name}_set');
  }

  final _$vendorNameAtom = Atom(name: '_Product.vendorName');

  @override
  String get vendorName {
    _$vendorNameAtom.context.enforceReadPolicy(_$vendorNameAtom);
    _$vendorNameAtom.reportObserved();
    return super.vendorName;
  }

  @override
  set vendorName(String value) {
    _$vendorNameAtom.context.conditionallyRunInAction(() {
      super.vendorName = value;
      _$vendorNameAtom.reportChanged();
    }, _$vendorNameAtom, name: '${_$vendorNameAtom.name}_set');
  }
}
