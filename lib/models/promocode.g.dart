// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promocode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Promocode _$PromocodeFromJson(Map<String, dynamic> json) {
  return Promocode()
    ..amount = json['amount'] as String
    ..name = json['name'] as String
    ..status = json['status'] as String
    ..percentage = json['percentage'] as String;
}

Map<String, dynamic> _$PromocodeToJson(Promocode instance) => <String, dynamic>{
      'amount': instance.amount,
      'name': instance.name,
      'status': instance.status,
      'percentage': instance.percentage,
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Promocode on _Promocode, Store {
  final _$amountAtom = Atom(name: '_Promocode.amount');

  @override
  String get amount {
    _$amountAtom.context.enforceReadPolicy(_$amountAtom);
    _$amountAtom.reportObserved();
    return super.amount;
  }

  @override
  set amount(String value) {
    _$amountAtom.context.conditionallyRunInAction(() {
      super.amount = value;
      _$amountAtom.reportChanged();
    }, _$amountAtom, name: '${_$amountAtom.name}_set');
  }

  final _$nameAtom = Atom(name: '_Promocode.name');

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

  final _$statusAtom = Atom(name: '_Promocode.status');

  @override
  String get status {
    _$statusAtom.context.enforceReadPolicy(_$statusAtom);
    _$statusAtom.reportObserved();
    return super.status;
  }

  @override
  set status(String value) {
    _$statusAtom.context.conditionallyRunInAction(() {
      super.status = value;
      _$statusAtom.reportChanged();
    }, _$statusAtom, name: '${_$statusAtom.name}_set');
  }

  final _$percentageAtom = Atom(name: '_Promocode.percentage');

  @override
  String get percentage {
    _$percentageAtom.context.enforceReadPolicy(_$percentageAtom);
    _$percentageAtom.reportObserved();
    return super.percentage;
  }

  @override
  set percentage(String value) {
    _$percentageAtom.context.conditionallyRunInAction(() {
      super.percentage = value;
      _$percentageAtom.reportChanged();
    }, _$percentageAtom, name: '${_$percentageAtom.name}_set');
  }
}
