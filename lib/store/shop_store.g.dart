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

  final _$isProductLoadingAtom = Atom(name: '_ShopStore.isProductLoading');

  @override
  bool get isProductLoading {
    _$isProductLoadingAtom.context.enforceReadPolicy(_$isProductLoadingAtom);
    _$isProductLoadingAtom.reportObserved();
    return super.isProductLoading;
  }

  @override
  set isProductLoading(bool value) {
    _$isProductLoadingAtom.context.conditionallyRunInAction(() {
      super.isProductLoading = value;
      _$isProductLoadingAtom.reportChanged();
    }, _$isProductLoadingAtom, name: '${_$isProductLoadingAtom.name}_set');
  }

  final _$shopallAtom = Atom(name: '_ShopStore.shopall');

  @override
  ObservableMap<String, Map<String, Shop>> get shopall {
    _$shopallAtom.context.enforceReadPolicy(_$shopallAtom);
    _$shopallAtom.reportObserved();
    return super.shopall;
  }

  @override
  set shopall(ObservableMap<String, Map<String, Shop>> value) {
    _$shopallAtom.context.conditionallyRunInAction(() {
      super.shopall = value;
      _$shopallAtom.reportChanged();
    }, _$shopallAtom, name: '${_$shopallAtom.name}_set');
  }

  final _$productallAtom = Atom(name: '_ShopStore.productall');

  @override
  ObservableMap<String, Map<String, Product>> get productall {
    _$productallAtom.context.enforceReadPolicy(_$productallAtom);
    _$productallAtom.reportObserved();
    return super.productall;
  }

  @override
  set productall(ObservableMap<String, Map<String, Product>> value) {
    _$productallAtom.context.conditionallyRunInAction(() {
      super.productall = value;
      _$productallAtom.reportChanged();
    }, _$productallAtom, name: '${_$productallAtom.name}_set');
  }

  final _$fetchCategoryDocumentAsyncAction =
      AsyncAction('fetchCategoryDocument');

  @override
  Future fetchCategoryDocument(String city, String category) {
    return _$fetchCategoryDocumentAsyncAction
        .run(() => super.fetchCategoryDocument(city, category));
  }

  final _$fetchProductAsyncAction = AsyncAction('fetchProduct');

  @override
  Future fetchProduct(String email) {
    return _$fetchProductAsyncAction.run(() => super.fetchProduct(email));
  }
}
