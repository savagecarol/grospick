// import 'package:grospick/models/category.dart';

import 'package:grospick/models/promocode.dart';
import 'package:grospick/utils/global.dart';
import 'package:mobx/mobx.dart';

part 'category_store.g.dart';

class CategoryStore = _CategoryStore with _$CategoryStore;

abstract class _CategoryStore with Store {
  @observable
  bool isLoading = false;

  @observable
  bool isSearching = false;

  @observable
  bool isCategoryLoading = false;

  @observable
  bool isOfferLoading = false;

  @observable
  ObservableList categoryMap;

  @observable
  bool isPromoCodeLoading = false;

  @observable
  Promocode promocode;

  @action
  fetchCategorties(String choose, String getter) async {
    if (categoryMap == null) {
      try {
        categoryMap = ObservableList();
        isCategoryLoading = true;
        List response = await productService.fetchCity(choose, getter);
        print(response);
        if (response != null) {
          categoryMap.addAll(response);
          isCategoryLoading = false;
          print("success");
        } else {
          print("yo");
          isCategoryLoading = true;
        }
      } catch (e) {
        isCategoryLoading = false;
        throw e;
      }
    }
  }

  getPromocode() async {
    try {
      isPromoCodeLoading = true;
      promocode = await productService.fetchPromoCOde();
      isPromoCodeLoading = false;
    } catch (e) {
      isPromoCodeLoading = false;
      throw e;
    }
  }
}
