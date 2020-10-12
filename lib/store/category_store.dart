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
  ObservableList city;

  @observable
  bool isCategoryLoading = false;

  @observable
  ObservableList categoryMap;

  @observable
  bool isRestaurantLoading = false;

  @observable
  ObservableList restaurant;


  @observable
  bool isPromoCodeLoading = false;

  @observable
  Promocode promocode;

  





  @observable
  bool isSearching = false;

 

  @observable
  bool isOfferLoading = false;


  @action
  fetchCity(String choose, String getter) async {
    if (city == null) {
      try {
        city = ObservableList();
        isLoading = true;
        List response = await productService.fetchCity(choose, getter);
        print(response);
        if (response != null) {
          city.addAll(response);
          isLoading = false;
          print("success");
        } else {
          print("yo");
          isLoading = true;
        }
      } catch (e) {
        isLoading = false;
        throw e;
      }
    }
  }

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

    @action
  fetchRestaurant(String choose, String getter) async {
    if (restaurant == null) {
      try {
        restaurant = ObservableList();
         isRestaurantLoading = true;
        List response = await productService.fetchCity(choose, getter);
        print(response);
        if (response != null) {
          restaurant.addAll(response);
          isRestaurantLoading = false;
          print("success");
        } else {
          print("yo");
          isRestaurantLoading = true;
        }
      } catch (e) {
        isCategoryLoading = false;
        throw e;
      }
    }
  }

   @action
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
