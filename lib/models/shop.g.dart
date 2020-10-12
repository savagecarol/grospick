// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Shop _$ShopFromJson(Map<String, dynamic> json) {
  return Shop()
    ..businessNumber = json['businessNumber'] as String
    ..categories = json['categories'] as List
    ..city = json['city'] as String
    ..closetime = json['closetime'] as String
    ..days = json['days'] as List
    ..docId = json['docId'] as String
    ..email = json['email'] as String
    ..image = json['image'] as String
    ..isVerified = json['isVerified'] as String
    ..latitude = json['latitude'] as String
    ..location = json['location'] as String
    ..longitude = json['longitude'] as String
    ..name = json['name'] as String
    ..opentime = json['opentime'] as String
    ..phone = json['phone'] as String
    ..restaurantCategories = json['restaurantCategories'] as List
    ..role = json['role'] as String
    ..timestamp = json['timestamp'] as int
    ..uid = json['uid'] as String;
}

Map<String, dynamic> _$ShopToJson(Shop instance) => <String, dynamic>{
      'businessNumber': instance.businessNumber,
      'categories': instance.categories,
      'city': instance.city,
      'closetime': instance.closetime,
      'days': instance.days,
      'docId': instance.docId,
      'email': instance.email,
      'image': instance.image,
      'isVerified': instance.isVerified,
      'latitude': instance.latitude,
      'location': instance.location,
      'longitude': instance.longitude,
      'name': instance.name,
      'opentime': instance.opentime,
      'phone': instance.phone,
      'restaurantCategories': instance.restaurantCategories,
      'role': instance.role,
      'timestamp': instance.timestamp,
      'uid': instance.uid,
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Shop on _Shop, Store {
  final _$businessNumberAtom = Atom(name: '_Shop.businessNumber');

  @override
  String get businessNumber {
    _$businessNumberAtom.context.enforceReadPolicy(_$businessNumberAtom);
    _$businessNumberAtom.reportObserved();
    return super.businessNumber;
  }

  @override
  set businessNumber(String value) {
    _$businessNumberAtom.context.conditionallyRunInAction(() {
      super.businessNumber = value;
      _$businessNumberAtom.reportChanged();
    }, _$businessNumberAtom, name: '${_$businessNumberAtom.name}_set');
  }

  final _$categoriesAtom = Atom(name: '_Shop.categories');

  @override
  List get categories {
    _$categoriesAtom.context.enforceReadPolicy(_$categoriesAtom);
    _$categoriesAtom.reportObserved();
    return super.categories;
  }

  @override
  set categories(List value) {
    _$categoriesAtom.context.conditionallyRunInAction(() {
      super.categories = value;
      _$categoriesAtom.reportChanged();
    }, _$categoriesAtom, name: '${_$categoriesAtom.name}_set');
  }

  final _$cityAtom = Atom(name: '_Shop.city');

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

  final _$closetimeAtom = Atom(name: '_Shop.closetime');

  @override
  String get closetime {
    _$closetimeAtom.context.enforceReadPolicy(_$closetimeAtom);
    _$closetimeAtom.reportObserved();
    return super.closetime;
  }

  @override
  set closetime(String value) {
    _$closetimeAtom.context.conditionallyRunInAction(() {
      super.closetime = value;
      _$closetimeAtom.reportChanged();
    }, _$closetimeAtom, name: '${_$closetimeAtom.name}_set');
  }

  final _$daysAtom = Atom(name: '_Shop.days');

  @override
  List get days {
    _$daysAtom.context.enforceReadPolicy(_$daysAtom);
    _$daysAtom.reportObserved();
    return super.days;
  }

  @override
  set days(List value) {
    _$daysAtom.context.conditionallyRunInAction(() {
      super.days = value;
      _$daysAtom.reportChanged();
    }, _$daysAtom, name: '${_$daysAtom.name}_set');
  }

  final _$docIdAtom = Atom(name: '_Shop.docId');

  @override
  String get docId {
    _$docIdAtom.context.enforceReadPolicy(_$docIdAtom);
    _$docIdAtom.reportObserved();
    return super.docId;
  }

  @override
  set docId(String value) {
    _$docIdAtom.context.conditionallyRunInAction(() {
      super.docId = value;
      _$docIdAtom.reportChanged();
    }, _$docIdAtom, name: '${_$docIdAtom.name}_set');
  }

  final _$emailAtom = Atom(name: '_Shop.email');

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

  final _$imageAtom = Atom(name: '_Shop.image');

  @override
  String get image {
    _$imageAtom.context.enforceReadPolicy(_$imageAtom);
    _$imageAtom.reportObserved();
    return super.image;
  }

  @override
  set image(String value) {
    _$imageAtom.context.conditionallyRunInAction(() {
      super.image = value;
      _$imageAtom.reportChanged();
    }, _$imageAtom, name: '${_$imageAtom.name}_set');
  }

  final _$isVerifiedAtom = Atom(name: '_Shop.isVerified');

  @override
  String get isVerified {
    _$isVerifiedAtom.context.enforceReadPolicy(_$isVerifiedAtom);
    _$isVerifiedAtom.reportObserved();
    return super.isVerified;
  }

  @override
  set isVerified(String value) {
    _$isVerifiedAtom.context.conditionallyRunInAction(() {
      super.isVerified = value;
      _$isVerifiedAtom.reportChanged();
    }, _$isVerifiedAtom, name: '${_$isVerifiedAtom.name}_set');
  }

  final _$latitudeAtom = Atom(name: '_Shop.latitude');

  @override
  String get latitude {
    _$latitudeAtom.context.enforceReadPolicy(_$latitudeAtom);
    _$latitudeAtom.reportObserved();
    return super.latitude;
  }

  @override
  set latitude(String value) {
    _$latitudeAtom.context.conditionallyRunInAction(() {
      super.latitude = value;
      _$latitudeAtom.reportChanged();
    }, _$latitudeAtom, name: '${_$latitudeAtom.name}_set');
  }

  final _$locationAtom = Atom(name: '_Shop.location');

  @override
  String get location {
    _$locationAtom.context.enforceReadPolicy(_$locationAtom);
    _$locationAtom.reportObserved();
    return super.location;
  }

  @override
  set location(String value) {
    _$locationAtom.context.conditionallyRunInAction(() {
      super.location = value;
      _$locationAtom.reportChanged();
    }, _$locationAtom, name: '${_$locationAtom.name}_set');
  }

  final _$longitudeAtom = Atom(name: '_Shop.longitude');

  @override
  String get longitude {
    _$longitudeAtom.context.enforceReadPolicy(_$longitudeAtom);
    _$longitudeAtom.reportObserved();
    return super.longitude;
  }

  @override
  set longitude(String value) {
    _$longitudeAtom.context.conditionallyRunInAction(() {
      super.longitude = value;
      _$longitudeAtom.reportChanged();
    }, _$longitudeAtom, name: '${_$longitudeAtom.name}_set');
  }

  final _$nameAtom = Atom(name: '_Shop.name');

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

  final _$opentimeAtom = Atom(name: '_Shop.opentime');

  @override
  String get opentime {
    _$opentimeAtom.context.enforceReadPolicy(_$opentimeAtom);
    _$opentimeAtom.reportObserved();
    return super.opentime;
  }

  @override
  set opentime(String value) {
    _$opentimeAtom.context.conditionallyRunInAction(() {
      super.opentime = value;
      _$opentimeAtom.reportChanged();
    }, _$opentimeAtom, name: '${_$opentimeAtom.name}_set');
  }

  final _$phoneAtom = Atom(name: '_Shop.phone');

  @override
  String get phone {
    _$phoneAtom.context.enforceReadPolicy(_$phoneAtom);
    _$phoneAtom.reportObserved();
    return super.phone;
  }

  @override
  set phone(String value) {
    _$phoneAtom.context.conditionallyRunInAction(() {
      super.phone = value;
      _$phoneAtom.reportChanged();
    }, _$phoneAtom, name: '${_$phoneAtom.name}_set');
  }

  final _$restaurantCategoriesAtom = Atom(name: '_Shop.restaurantCategories');

  @override
  List get restaurantCategories {
    _$restaurantCategoriesAtom.context
        .enforceReadPolicy(_$restaurantCategoriesAtom);
    _$restaurantCategoriesAtom.reportObserved();
    return super.restaurantCategories;
  }

  @override
  set restaurantCategories(List value) {
    _$restaurantCategoriesAtom.context.conditionallyRunInAction(() {
      super.restaurantCategories = value;
      _$restaurantCategoriesAtom.reportChanged();
    }, _$restaurantCategoriesAtom,
        name: '${_$restaurantCategoriesAtom.name}_set');
  }

  final _$roleAtom = Atom(name: '_Shop.role');

  @override
  String get role {
    _$roleAtom.context.enforceReadPolicy(_$roleAtom);
    _$roleAtom.reportObserved();
    return super.role;
  }

  @override
  set role(String value) {
    _$roleAtom.context.conditionallyRunInAction(() {
      super.role = value;
      _$roleAtom.reportChanged();
    }, _$roleAtom, name: '${_$roleAtom.name}_set');
  }

  final _$timestampAtom = Atom(name: '_Shop.timestamp');

  @override
  int get timestamp {
    _$timestampAtom.context.enforceReadPolicy(_$timestampAtom);
    _$timestampAtom.reportObserved();
    return super.timestamp;
  }

  @override
  set timestamp(int value) {
    _$timestampAtom.context.conditionallyRunInAction(() {
      super.timestamp = value;
      _$timestampAtom.reportChanged();
    }, _$timestampAtom, name: '${_$timestampAtom.name}_set');
  }

  final _$uidAtom = Atom(name: '_Shop.uid');

  @override
  String get uid {
    _$uidAtom.context.enforceReadPolicy(_$uidAtom);
    _$uidAtom.reportObserved();
    return super.uid;
  }

  @override
  set uid(String value) {
    _$uidAtom.context.conditionallyRunInAction(() {
      super.uid = value;
      _$uidAtom.reportChanged();
    }, _$uidAtom, name: '${_$uidAtom.name}_set');
  }
}
