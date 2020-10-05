// import 'package:grospick/models/category.dart';
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

  @action
  fetchCategorties() async {
    if (categoryMap == null) {
      try {
        categoryMap = ObservableList();
        isCategoryLoading = true;
        List response = await productService.fetchCategory();
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
}
