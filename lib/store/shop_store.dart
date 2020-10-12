// import 'package:grospick/models/category.dart';
import 'package:grospick/models/shop.dart';
import 'package:grospick/models/product.dart';
import 'package:grospick/utils/global.dart';
import 'package:mobx/mobx.dart';

part 'shop_store.g.dart';

class ShopStore = _ShopStore with _$ShopStore;

abstract class _ShopStore with Store {
  @observable
  bool isLoading = false;

  @observable
  bool isProductLoading = false;

  


  @observable
  ObservableMap<String, Map<String, Shop>> shopall =
      ObservableMap<String, Map<String, Shop>>();

  @observable
  ObservableMap<String, Map<String, Product>> productall =
      ObservableMap<String, Map<String, Product>>();

  @action
  fetchCategoryDocument(String city, String category) async {
    try {
      isLoading = true;
      Map<String, Shop> response =
          await shopService.getCityCategoryCollection(city, category);
      shopall.addAll({category: response});
      isLoading = false;
    } catch (e) {
      throw e;
    }
  }

  @action
  fetchProduct(String email) async {
    try {
      isProductLoading = true;
      Map<String, Product> response =
          await productService.getProductList(email);
      productall.addAll({email: response});
      print(productall);
      isProductLoading = false;
    } catch (e) {
      throw e;
    }
  }

  
}
