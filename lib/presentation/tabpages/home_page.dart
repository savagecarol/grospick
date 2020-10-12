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

  navigateToMenuPage(var i, String city, String category) async {
    page_index = i;
    defaultCategory = category;
     await Provider.of<ShopStore>(context)
          .fetchCategoryDocument('Australia', defaultCategory);
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
                            height: 4 * ScreenUtil.instance.setHeight(150),
                            width: ScreenUtil.instance
                                .setWidth(ScreenUtil.instance.width),
                            child: GridView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: categoryStore.categoryMap.length,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                  mainAxisSpacing: 12,
                                  crossAxisSpacing: 16,
                                  childAspectRatio: .64,
                                ),
                                itemBuilder: (context, i) {
                                  String p = 'assets/';
                                  if (categoryStore.categoryMap[i] ==
                                      'Grocery') {
                                    p = p + 'groceries.png';
                                  }
                                  if (categoryStore.categoryMap[i] ==
                                      'Medicine') {
                                    p = p + 'medicine.png';
                                  }
                                  if (categoryStore.categoryMap[i] ==
                                      'Restaurant') {
                                    p = p + 'food.png';
                                  }
                                  if (categoryStore.categoryMap[i] == 'Food') {
                                    p = p + 'food.png';
                                  }
                                  if (categoryStore.categoryMap[i] ==
                                      'Liquor') {
                                    p = p + 'liquor.png';
                                  }
                                  if (categoryStore.categoryMap[i] ==
                                      'Laundry') {
                                    p = p + 'laundry.png';
                                  }
                                  if (categoryStore.categoryMap[i] == 'Pets') {
                                    p = p + 'pet.png';
                                  }
                                  if (categoryStore.categoryMap[i] ==
                                      'Vegetables') {
                                    p = p + 'fruits.png';
                                  }
                                  return CustomCategoryContainer(
                                    image: p,
                                    onTap: () {
                                      page_index = i;
                                      print(_city);

                                      navigateToMenuPage(i, _city,
                                          categoryStore.categoryMap[i]);
                                    },
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
