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

  final _$fetchCategortiesAsyncAction = AsyncAction('fetchCategorties');

  @override
  Future fetchCategorties() {
    return _$fetchCategortiesAsyncAction.run(() => super.fetchCategorties());
  }
}
