// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CategoryStore on _CategoryStore, Store {
  final _$isLoadingAtom = Atom(name: '_CategoryStore.isLoading');

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

  final _$cityAtom = Atom(name: '_CategoryStore.city');

  @override
  ObservableList get city {
    _$cityAtom.context.enforceReadPolicy(_$cityAtom);
    _$cityAtom.reportObserved();
    return super.city;
  }

  @override
  set city(ObservableList value) {
    _$cityAtom.context.conditionallyRunInAction(() {
      super.city = value;
      _$cityAtom.reportChanged();
    }, _$cityAtom, name: '${_$cityAtom.name}_set');
  }

  final _$isCategoryLoadingAtom =
      Atom(name: '_CategoryStore.isCategoryLoading');

  @override
  bool get isCategoryLoading {
    _$isCategoryLoadingAtom.context.enforceReadPolicy(_$isCategoryLoadingAtom);
    _$isCategoryLoadingAtom.reportObserved();
    return super.isCategoryLoading;
  }

  @override
  set isCategoryLoading(bool value) {
    _$isCategoryLoadingAtom.context.conditionallyRunInAction(() {
      super.isCategoryLoading = value;
      _$isCategoryLoadingAtom.reportChanged();
    }, _$isCategoryLoadingAtom, name: '${_$isCategoryLoadingAtom.name}_set');
  }

  final _$categoryMapAtom = Atom(name: '_CategoryStore.categoryMap');

  @override
  ObservableList get categoryMap {
    _$categoryMapAtom.context.enforceReadPolicy(_$categoryMapAtom);
    _$categoryMapAtom.reportObserved();
    return super.categoryMap;
  }

  @override
  set categoryMap(ObservableList value) {
    _$categoryMapAtom.context.conditionallyRunInAction(() {
      super.categoryMap = value;
      _$categoryMapAtom.reportChanged();
    }, _$categoryMapAtom, name: '${_$categoryMapAtom.name}_set');
  }

  final _$isRestaurantLoadingAtom =
      Atom(name: '_CategoryStore.isRestaurantLoading');

  @override
  bool get isRestaurantLoading {
    _$isRestaurantLoadingAtom.context
        .enforceReadPolicy(_$isRestaurantLoadingAtom);
    _$isRestaurantLoadingAtom.reportObserved();
    return super.isRestaurantLoading;
  }

  @override
  set isRestaurantLoading(bool value) {
    _$isRestaurantLoadingAtom.context.conditionallyRunInAction(() {
      super.isRestaurantLoading = value;
      _$isRestaurantLoadingAtom.reportChanged();
    }, _$isRestaurantLoadingAtom,
        name: '${_$isRestaurantLoadingAtom.name}_set');
  }

  final _$restaurantAtom = Atom(name: '_CategoryStore.restaurant');

  @override
  ObservableList get restaurant {
    _$restaurantAtom.context.enforceReadPolicy(_$restaurantAtom);
    _$restaurantAtom.reportObserved();
    return super.restaurant;
  }

  @override
  set restaurant(ObservableList value) {
    _$restaurantAtom.context.conditionallyRunInAction(() {
      super.restaurant = value;
      _$restaurantAtom.reportChanged();
    }, _$restaurantAtom, name: '${_$restaurantAtom.name}_set');
  }

  final _$isPromoCodeLoadingAtom =
      Atom(name: '_CategoryStore.isPromoCodeLoading');

  @override
  bool get isPromoCodeLoading {
    _$isPromoCodeLoadingAtom.context
        .enforceReadPolicy(_$isPromoCodeLoadingAtom);
    _$isPromoCodeLoadingAtom.reportObserved();
    return super.isPromoCodeLoading;
  }

  @override
  set isPromoCodeLoading(bool value) {
    _$isPromoCodeLoadingAtom.context.conditionallyRunInAction(() {
      super.isPromoCodeLoading = value;
      _$isPromoCodeLoadingAtom.reportChanged();
    }, _$isPromoCodeLoadingAtom, name: '${_$isPromoCodeLoadingAtom.name}_set');
  }

  final _$promocodeAtom = Atom(name: '_CategoryStore.promocode');

  @override
  Promocode get promocode {
    _$promocodeAtom.context.enforceReadPolicy(_$promocodeAtom);
    _$promocodeAtom.reportObserved();
    return super.promocode;
  }

  @override
  set promocode(Promocode value) {
    _$promocodeAtom.context.conditionallyRunInAction(() {
      super.promocode = value;
      _$promocodeAtom.reportChanged();
    }, _$promocodeAtom, name: '${_$promocodeAtom.name}_set');
  }

  final _$isSearchingAtom = Atom(name: '_CategoryStore.isSearching');

  @override
  bool get isSearching {
    _$isSearchingAtom.context.enforceReadPolicy(_$isSearchingAtom);
    _$isSearchingAtom.reportObserved();
    return super.isSearching;
  }

  @override
  set isSearching(bool value) {
    _$isSearchingAtom.context.conditionallyRunInAction(() {
      super.isSearching = value;
      _$isSearchingAtom.reportChanged();
    }, _$isSearchingAtom, name: '${_$isSearchingAtom.name}_set');
  }

  final _$isOfferLoadingAtom = Atom(name: '_CategoryStore.isOfferLoading');

  @override
  bool get isOfferLoading {
    _$isOfferLoadingAtom.context.enforceReadPolicy(_$isOfferLoadingAtom);
    _$isOfferLoadingAtom.reportObserved();
    return super.isOfferLoading;
  }

  @override
  set isOfferLoading(bool value) {
    _$isOfferLoadingAtom.context.conditionallyRunInAction(() {
      super.isOfferLoading = value;
      _$isOfferLoadingAtom.reportChanged();
    }, _$isOfferLoadingAtom, name: '${_$isOfferLoadingAtom.name}_set');
  }

  final _$fetchCityAsyncAction = AsyncAction('fetchCity');

  @override
  Future fetchCity(String choose, String getter) {
    return _$fetchCityAsyncAction.run(() => super.fetchCity(choose, getter));
  }

  final _$fetchCategortiesAsyncAction = AsyncAction('fetchCategorties');

  @override
  Future fetchCategorties(String choose, String getter) {
    return _$fetchCategortiesAsyncAction
        .run(() => super.fetchCategorties(choose, getter));
  }

  final _$fetchRestaurantAsyncAction = AsyncAction('fetchRestaurant');

  @override
  Future fetchRestaurant(String choose, String getter) {
    return _$fetchRestaurantAsyncAction
        .run(() => super.fetchRestaurant(choose, getter));
  }

  final _$getPromocodeAsyncAction = AsyncAction('getPromocode');

  @override
  Future getPromocode() {
    return _$getPromocodeAsyncAction.run(() => super.getPromocode());
  }
}
