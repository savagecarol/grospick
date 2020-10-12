// import 'package:grospick/models/category.dart';
import 'package:grospick/models/shop.dart';

import 'package:grospick/utils/global.dart';
import 'package:mobx/mobx.dart';

part 'shop_store.g.dart';

class ShopStore = _ShopStore with _$ShopStore;

abstract class _ShopStore with Store {
  @observable
  bool isLoading = false;

  @observable
  bool isData = true;

  @observable
  ObservableMap<String, Map<String, Shop>> shopall =
      ObservableMap<String, Map<String, Shop>>();

  @observable
  ObservableMap<String, Shop> shopMap = ObservableMap<String, Shop>();

  @action
  fetchCategoryDocument(String category) async {
    try {
      isLoading = true;
      isData = false;
      Map<String, Shop> response =
          await shopService.getCityCategoryCollection(category: category);
      shopall.addAll({category: response});
      isLoading = false;
    } catch (e) {
      throw e;
    }
  }
}
