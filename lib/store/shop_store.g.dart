// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ShopStore on _ShopStore, Store {
  final _$isLoadingAtom = Atom(name: '_ShopStore.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.context.enforceReadPolicy(_$isLoadingAtom);
    _$isLoadingAtom.reportObserved();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.context.conditionallyRunInAction(() {
      super.isLoading = value;
      _$isLoadingAtom.reportChanged();
    }, _$isLoadingAtom, name: '${_$isLoadingAtom.name}_set');
  }

  final _$isDataAtom = Atom(name: '_ShopStore.isData');

  @override
  bool get isData {
    _$isDataAtom.context.enforceReadPolicy(_$isDataAtom);
    _$isDataAtom.reportObserved();
    return super.isData;
  }

  @override
  set isData(bool value) {
    _$isDataAtom.context.conditionallyRunInAction(() {
      super.isData = value;
      _$isDataAtom.reportChanged();
    }, _$isDataAtom, name: '${_$isDataAtom.name}_set');
  }

  final _$shopMapAtom = Atom(name: '_ShopStore.shopMap');

  @override
  ObservableMap<String, Shop> get shopMap {
    _$shopMapAtom.context.enforceReadPolicy(_$shopMapAtom);
    _$shopMapAtom.reportObserved();
    return super.shopMap;
  }

  @override
  set shopMap(ObservableMap<String, Shop> value) {
    _$shopMapAtom.context.conditionallyRunInAction(() {
      super.shopMap = value;
      _$shopMapAtom.reportChanged();
    }, _$shopMapAtom, name: '${_$shopMapAtom.name}_set');
  }

  final _$fetchCategoryDocumentAsyncAction =
      AsyncAction('fetchCategoryDocument');

  @override
  Future fetchCategoryDocument(String category) {
    return _$fetchCategoryDocumentAsyncAction
        .run(() => super.fetchCategoryDocument(category));
  }
}
