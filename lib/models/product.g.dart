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
    ..description2 = json['description2'] as String
    ..description3 = json['description3'] as String
    ..description4 = json['description4'] as String
    ..discount = json['discount'] as String
    ..discount1 = json['discount1'] as String
    ..discount2 = json['discount2'] as String
    ..discount3 = json['discount3'] as String
    ..discount4 = json['discount4'] as String
    ..image = json['image'] as List
    ..image2 = json['image2'] as String
    ..image3 = json['image3'] as String
    ..image4 = json['image4'] as String
    ..mrp = json['mrp'] as List
    ..mrp2 = json['mrp2'] as String
    ..mrp3 = json['mrp3'] as String
    ..mrp4 = json['mrp4'] as String
    ..name = json['name'] as String
    ..pid = json['pid'] as String
    ..price = json['price'] as List
    ..price2 = json['price2'] as String
    ..price3 = json['price3'] as String
    ..price4 = json['price4'] as String
    ..show = json['show'] as bool
    ..stock = json['stock'] as List
    ..stock2 = json['stock2'] as String
    ..stock3 = json['stock3'] as String
    ..stock4 = json['stock4'] as String
    ..subcategory = json['subcategory'] as String
    ..supercategory = json['supercategory'] as String
    ..variant = json['variant'] as int;
}

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'city': instance.city,
      'description': instance.description,
      'description2': instance.description2,
      'description3': instance.description3,
      'description4': instance.description4,
      'discount': instance.discount,
      'discount1': instance.discount1,
      'discount2': instance.discount2,
      'discount3': instance.discount3,
      'discount4': instance.discount4,
      'image': instance.image,
      'image2': instance.image2,
      'image3': instance.image3,
      'image4': instance.image4,
      'mrp': instance.mrp,
      'mrp2': instance.mrp2,
      'mrp3': instance.mrp3,
      'mrp4': instance.mrp4,
      'name': instance.name,
      'pid': instance.pid,
      'price': instance.price,
      'price2': instance.price2,
      'price3': instance.price3,
      'price4': instance.price4,
      'show': instance.show,
      'stock': instance.stock,
      'stock2': instance.stock2,
      'stock3': instance.stock3,
      'stock4': instance.stock4,
      'subcategory': instance.subcategory,
      'supercategory': instance.supercategory,
      'variant': instance.variant,
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

  final _$description2Atom = Atom(name: '_Product.description2');

  @override
  String get description2 {
    _$description2Atom.context.enforceReadPolicy(_$description2Atom);
    _$description2Atom.reportObserved();
    return super.description2;
  }

  @override
  set description2(String value) {
    _$description2Atom.context.conditionallyRunInAction(() {
      super.description2 = value;
      _$description2Atom.reportChanged();
    }, _$description2Atom, name: '${_$description2Atom.name}_set');
  }

  final _$description3Atom = Atom(name: '_Product.description3');

  @override
  String get description3 {
    _$description3Atom.context.enforceReadPolicy(_$description3Atom);
    _$description3Atom.reportObserved();
    return super.description3;
  }

  @override
  set description3(String value) {
    _$description3Atom.context.conditionallyRunInAction(() {
      super.description3 = value;
      _$description3Atom.reportChanged();
    }, _$description3Atom, name: '${_$description3Atom.name}_set');
  }

  final _$description4Atom = Atom(name: '_Product.description4');

  @override
  String get description4 {
    _$description4Atom.context.enforceReadPolicy(_$description4Atom);
    _$description4Atom.reportObserved();
    return super.description4;
  }

  @override
  set description4(String value) {
    _$description4Atom.context.conditionallyRunInAction(() {
      super.description4 = value;
      _$description4Atom.reportChanged();
    }, _$description4Atom, name: '${_$description4Atom.name}_set');
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

  final _$discount1Atom = Atom(name: '_Product.discount1');

  @override
  String get discount1 {
    _$discount1Atom.context.enforceReadPolicy(_$discount1Atom);
    _$discount1Atom.reportObserved();
    return super.discount1;
  }

  @override
  set discount1(String value) {
    _$discount1Atom.context.conditionallyRunInAction(() {
      super.discount1 = value;
      _$discount1Atom.reportChanged();
    }, _$discount1Atom, name: '${_$discount1Atom.name}_set');
  }

  final _$discount2Atom = Atom(name: '_Product.discount2');

  @override
  String get discount2 {
    _$discount2Atom.context.enforceReadPolicy(_$discount2Atom);
    _$discount2Atom.reportObserved();
    return super.discount2;
  }

  @override
  set discount2(String value) {
    _$discount2Atom.context.conditionallyRunInAction(() {
      super.discount2 = value;
      _$discount2Atom.reportChanged();
    }, _$discount2Atom, name: '${_$discount2Atom.name}_set');
  }

  final _$discount3Atom = Atom(name: '_Product.discount3');

  @override
  String get discount3 {
    _$discount3Atom.context.enforceReadPolicy(_$discount3Atom);
    _$discount3Atom.reportObserved();
    return super.discount3;
  }

  @override
  set discount3(String value) {
    _$discount3Atom.context.conditionallyRunInAction(() {
      super.discount3 = value;
      _$discount3Atom.reportChanged();
    }, _$discount3Atom, name: '${_$discount3Atom.name}_set');
  }

  final _$discount4Atom = Atom(name: '_Product.discount4');

  @override
  String get discount4 {
    _$discount4Atom.context.enforceReadPolicy(_$discount4Atom);
    _$discount4Atom.reportObserved();
    return super.discount4;
  }

  @override
  set discount4(String value) {
    _$discount4Atom.context.conditionallyRunInAction(() {
      super.discount4 = value;
      _$discount4Atom.reportChanged();
    }, _$discount4Atom, name: '${_$discount4Atom.name}_set');
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

  final _$image2Atom = Atom(name: '_Product.image2');

  @override
  String get image2 {
    _$image2Atom.context.enforceReadPolicy(_$image2Atom);
    _$image2Atom.reportObserved();
    return super.image2;
  }

  @override
  set image2(String value) {
    _$image2Atom.context.conditionallyRunInAction(() {
      super.image2 = value;
      _$image2Atom.reportChanged();
    }, _$image2Atom, name: '${_$image2Atom.name}_set');
  }

  final _$image3Atom = Atom(name: '_Product.image3');

  @override
  String get image3 {
    _$image3Atom.context.enforceReadPolicy(_$image3Atom);
    _$image3Atom.reportObserved();
    return super.image3;
  }

  @override
  set image3(String value) {
    _$image3Atom.context.conditionallyRunInAction(() {
      super.image3 = value;
      _$image3Atom.reportChanged();
    }, _$image3Atom, name: '${_$image3Atom.name}_set');
  }

  final _$image4Atom = Atom(name: '_Product.image4');

  @override
  String get image4 {
    _$image4Atom.context.enforceReadPolicy(_$image4Atom);
    _$image4Atom.reportObserved();
    return super.image4;
  }

  @override
  set image4(String value) {
    _$image4Atom.context.conditionallyRunInAction(() {
      super.image4 = value;
      _$image4Atom.reportChanged();
    }, _$image4Atom, name: '${_$image4Atom.name}_set');
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

  final _$mrp2Atom = Atom(name: '_Product.mrp2');

  @override
  String get mrp2 {
    _$mrp2Atom.context.enforceReadPolicy(_$mrp2Atom);
    _$mrp2Atom.reportObserved();
    return super.mrp2;
  }

  @override
  set mrp2(String value) {
    _$mrp2Atom.context.conditionallyRunInAction(() {
      super.mrp2 = value;
      _$mrp2Atom.reportChanged();
    }, _$mrp2Atom, name: '${_$mrp2Atom.name}_set');
  }

  final _$mrp3Atom = Atom(name: '_Product.mrp3');

  @override
  String get mrp3 {
    _$mrp3Atom.context.enforceReadPolicy(_$mrp3Atom);
    _$mrp3Atom.reportObserved();
    return super.mrp3;
  }

  @override
  set mrp3(String value) {
    _$mrp3Atom.context.conditionallyRunInAction(() {
      super.mrp3 = value;
      _$mrp3Atom.reportChanged();
    }, _$mrp3Atom, name: '${_$mrp3Atom.name}_set');
  }

  final _$mrp4Atom = Atom(name: '_Product.mrp4');

  @override
  String get mrp4 {
    _$mrp4Atom.context.enforceReadPolicy(_$mrp4Atom);
    _$mrp4Atom.reportObserved();
    return super.mrp4;
  }

  @override
  set mrp4(String value) {
    _$mrp4Atom.context.conditionallyRunInAction(() {
      super.mrp4 = value;
      _$mrp4Atom.reportChanged();
    }, _$mrp4Atom, name: '${_$mrp4Atom.name}_set');
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

  final _$price2Atom = Atom(name: '_Product.price2');

  @override
  String get price2 {
    _$price2Atom.context.enforceReadPolicy(_$price2Atom);
    _$price2Atom.reportObserved();
    return super.price2;
  }

  @override
  set price2(String value) {
    _$price2Atom.context.conditionallyRunInAction(() {
      super.price2 = value;
      _$price2Atom.reportChanged();
    }, _$price2Atom, name: '${_$price2Atom.name}_set');
  }

  final _$price3Atom = Atom(name: '_Product.price3');

  @override
  String get price3 {
    _$price3Atom.context.enforceReadPolicy(_$price3Atom);
    _$price3Atom.reportObserved();
    return super.price3;
  }

  @override
  set price3(String value) {
    _$price3Atom.context.conditionallyRunInAction(() {
      super.price3 = value;
      _$price3Atom.reportChanged();
    }, _$price3Atom, name: '${_$price3Atom.name}_set');
  }

  final _$price4Atom = Atom(name: '_Product.price4');

  @override
  String get price4 {
    _$price4Atom.context.enforceReadPolicy(_$price4Atom);
    _$price4Atom.reportObserved();
    return super.price4;
  }

  @override
  set price4(String value) {
    _$price4Atom.context.conditionallyRunInAction(() {
      super.price4 = value;
      _$price4Atom.reportChanged();
    }, _$price4Atom, name: '${_$price4Atom.name}_set');
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

  final _$stock2Atom = Atom(name: '_Product.stock2');

  @override
  String get stock2 {
    _$stock2Atom.context.enforceReadPolicy(_$stock2Atom);
    _$stock2Atom.reportObserved();
    return super.stock2;
  }

  @override
  set stock2(String value) {
    _$stock2Atom.context.conditionallyRunInAction(() {
      super.stock2 = value;
      _$stock2Atom.reportChanged();
    }, _$stock2Atom, name: '${_$stock2Atom.name}_set');
  }

  final _$stock3Atom = Atom(name: '_Product.stock3');

  @override
  String get stock3 {
    _$stock3Atom.context.enforceReadPolicy(_$stock3Atom);
    _$stock3Atom.reportObserved();
    return super.stock3;
  }

  @override
  set stock3(String value) {
    _$stock3Atom.context.conditionallyRunInAction(() {
      super.stock3 = value;
      _$stock3Atom.reportChanged();
    }, _$stock3Atom, name: '${_$stock3Atom.name}_set');
  }

  final _$stock4Atom = Atom(name: '_Product.stock4');

  @override
  String get stock4 {
    _$stock4Atom.context.enforceReadPolicy(_$stock4Atom);
    _$stock4Atom.reportObserved();
    return super.stock4;
  }

  @override
  set stock4(String value) {
    _$stock4Atom.context.conditionallyRunInAction(() {
      super.stock4 = value;
      _$stock4Atom.reportChanged();
    }, _$stock4Atom, name: '${_$stock4Atom.name}_set');
  }

  final _$subcategoryAtom = Atom(name: '_Product.subcategory');

  @override
  String get subcategory {
    _$subcategoryAtom.context.enforceReadPolicy(_$subcategoryAtom);
    _$subcategoryAtom.reportObserved();
    return super.subcategory;
  }

  @override
  set subcategory(String value) {
    _$subcategoryAtom.context.conditionallyRunInAction(() {
      super.subcategory = value;
      _$subcategoryAtom.reportChanged();
    }, _$subcategoryAtom, name: '${_$subcategoryAtom.name}_set');
  }

  final _$supercategoryAtom = Atom(name: '_Product.supercategory');

  @override
  String get supercategory {
    _$supercategoryAtom.context.enforceReadPolicy(_$supercategoryAtom);
    _$supercategoryAtom.reportObserved();
    return super.supercategory;
  }

  @override
  set supercategory(String value) {
    _$supercategoryAtom.context.conditionallyRunInAction(() {
      super.supercategory = value;
      _$supercategoryAtom.reportChanged();
    }, _$supercategoryAtom, name: '${_$supercategoryAtom.name}_set');
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
}
