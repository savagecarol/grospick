import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:grospick/models/store_observer.dart';
import 'package:grospick/presentation/custom/category_container.dart';
import 'package:grospick/presentation/custom/text_field.dart';
import 'package:grospick/presentation/menupage.dart';
import 'package:grospick/store/category_store.dart';
import 'package:grospick/store/shop_store.dart';
import 'package:grospick/store/user_store.dart';
import 'package:grospick/utils/global.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _city;

  navigateToMenuPage(var i, String category){
    page_index = i;
    defaultCategory = category;
    Navigator.pushNamed(context, MenuPage.routeNamed);

    // if (city != null) {
    //    await Provider.of<ShopStore>(context)
    //       .fetchCategoryDocument(city, defaultCategory);
    //   Navigator.pushNamed(context, MenuPage.routeNamed);
    // } else {
    //   return showSnackbar('Choose City', context);
    // }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      checking();
    });
  }

  checking() async {
    String uid = await preferenceService.getUID();
    if (uid != null) {
      await Provider.of<UserStore>(context).checking();
      await Provider.of<UserStore>(context).getData();
      await Provider.of<CategoryStore>(context)
          .fetchRestaurant('restaurant', 'items');
      await Provider.of<CategoryStore>(context)
          .fetchCity('Australia', 'cityname');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            color: Colors.white,
            child: ListView(
              children: [
                SizedBox(height: ScreenUtil.instance.setHeight(32)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: CustomTextField(
                    size: true,
                    isPrefixIcon: true,
                    hintText: 'Search For City',
                    icon: Icons.search,
                    validator: requiredString,
                    onSaved: (value) {
                      return _city = value;
                    },
                  ),
                ),
                SizedBox(height: ScreenUtil.instance.setHeight(32)),
                StoreObserver<CategoryStore>(builder:
                    (CategoryStore categoryStore, BuildContext conteext) {
                  if (categoryStore.categoryMap == null)
                    categoryStore.fetchCategorties('categories', 'items');
                  if (categoryStore.isCategoryLoading)
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  return Container(
                      child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Container(
                            height: 4 * ScreenUtil.instance.setHeight(155),
                            width: ScreenUtil.instance
                                .setWidth(ScreenUtil.instance.width),
                            child: ListView.builder(
                                scrollDirection: Axis.vertical,
                                itemCount:
                                    (categoryStore.categoryMap.length / 2)
                                        .toInt(),
                                itemBuilder: (context, k) {
                                  int i;
                                  int j;
                                  if (k == 0) {
                                    i = 0;
                                    j = 1;
                                  }
                                  if (k == 1) {
                                    i = 2;
                                    j = 3;
                                  }
                                  if (k == 2) {
                                    i = 4;
                                    j = 5;
                                  }
                                  if (k == 3) {
                                    i = 6;
                                    j = 7;
                                  }
                                  String p = 'assets/';
                                  String q = 'assets/';
                                  if (categoryStore.categoryMap[i] ==
                                      'Grocery') {
                                    p = p + 'groceries.png';
                                  }
                                  if (categoryStore.categoryMap[j] ==
                                      'Medicine') {
                                    q = q + 'medicine.png';
                                  }
                                  if (categoryStore.categoryMap[i] ==
                                      'Restaurant') {
                                    p = p + 'food.png';
                                  }
                                  if (categoryStore.categoryMap[j] ==
                                      'Liquor') {
                                    q = q + 'liquor.png';
                                  }
                                  if (categoryStore.categoryMap[i] ==
                                      'Laundry') {
                                    p = p + 'laundry.png';
                                  }
                                  if (categoryStore.categoryMap[j] == 'Pets') {
                                    q = q + 'pet.png';
                                  }
                                  if (categoryStore.categoryMap[i] ==
                                      'Vegetables') {
                                    p = p + 'fruits.png';
                                  }
                                  if (categoryStore.categoryMap[j] == 'Meat') {
                                    q = q + 'meat.png';
                                  }
                                  return Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        child: CustomCategoryContainer(
                                          image: p,
                                          onTap: () {
                                            page_index = i;
                                            navigateToMenuPage(i,
                                                categoryStore.categoryMap[i]);
                                          },
                                        ),
                                      ),
                                      Container(
                                        child: CustomCategoryContainer(
                                          image: q,
                                          onTap: () {
                                            page_index = j;
                                            print(_city);
                                            navigateToMenuPage(j,
                                                categoryStore.categoryMap[j]);
                                          },
                                        ),
                                      ),
                                    ],
                                  );
                                }),
                          )));
                }),
                SizedBox(height: ScreenUtil.instance.setHeight(32)),
                Container(
                  width:
                      ScreenUtil.instance.setWidth(ScreenUtil.instance.width),
                  height: ScreenUtil.instance.setHeight(200),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/c.jpg'),
                          fit: BoxFit.fitWidth)),
                )
              ],
            )));
  }
}
