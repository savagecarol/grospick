import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grospick/models/store_observer.dart';
import 'package:grospick/presentation/custom/scaffold.dart';
import 'package:grospick/presentation/custom/shopcard.dart';
import 'package:grospick/presentation/shoppage.dart';
import 'package:grospick/presentation/splashpage.dart';
import 'package:grospick/presentation/tabpages/home_page.dart';
import 'package:grospick/store/category_store.dart';

import 'package:grospick/store/shop_store.dart';
import 'package:grospick/utils/global.dart';

import 'package:grospick/utils/stringValues.dart';
import 'package:grospick/utils/styles.dart';

import 'package:provider/provider.dart';

class MenuPage extends StatefulWidget {
  static const String routeNamed = 'menupage';

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

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
    await Provider.of<ShopStore>(context)
        .fetchCategoryDocument('Australia', defaultCategory);
    }
  }

  _navigateToBackPage() {
    Navigator.pushNamed(context, SplashPage.routeNamed);
  }

  _navigateToShopPage(int index, String email) async {
    shop = index;
    await Provider.of<ShopStore>(context).fetchProduct(email);

    Navigator.pushNamed(context, ShopPage.routeNamed);
  }

  // navigateToMenuPage(var i, String city, String category) async {

  // }

  Widget build(BuildContext context) {
    return CustomScaffold(
      appBarTextSize: 19,
      appBarText: defaultCategory,
      appbarOnTap: _navigateToBackPage,
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(height: ScreenUtil.instance.setHeight(32)),
            Container(
                child: (page_index == 2)
                    ? Container(
                        height: ScreenUtil.instance.setHeight(50),
                        child: StoreObserver<CategoryStore>(builder:
                            (CategoryStore categoryStore,
                                BuildContext conteext) {
                          if (categoryStore.restaurant == null) {
                            categoryStore.fetchRestaurant(
                                'restaurant', 'items');
                            if (categoryStore.isRestaurantLoading == true) {
                              return Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                          }
                          return ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: categoryStore.restaurant.length,
                              itemBuilder: (context, index) {
                                return Container(
                                    margin: EdgeInsets.only(
                                        left: ScreenUtil.instance.setWidth(10),
                                        right:
                                            ScreenUtil.instance.setHeight(10)),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                      border: Border.all(
                                          width: 1, color: Styles.APP_COLOR),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12),
                                      child: Center(
                                          child: Text(
                                              categoryStore.restaurant[index],
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight:
                                                      FontWeight.w400))),
                                    ));
                              });
                        }))
                    : Container()),
            Container(
                child: (page_index == 2)
                    ? SizedBox(height: ScreenUtil.instance.setHeight(16))
                    : Container()),
            StoreObserver<ShopStore>(
                builder: (ShopStore shopStore, BuildContext context) {
              if (shopStore.isLoading)
                return Center(
                  child: CircularProgressIndicator(),
                );           
                return Container(
                  child:(shopStore.shopall[defaultCategory].length == 0) ? 
                   Container(
                      height: ScreenUtil.instance
                          .setHeight((ScreenUtil.instance.height) / 1.8),
                      child: Center(
                          child: Text(StringValues.NO_DATA_AVAILABLE,
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[700])))) :
                Container(
                    height: ScreenUtil.instance.setHeight(670),
                    child: ListView.builder(
                        itemCount: shopStore.shopall[defaultCategory].length,
                        itemBuilder: (context, index) {
                          return CustomShopCard(
                            image: shopStore.shopall[defaultCategory].values
                                .toList()[index]
                                .image,
                            name: shopStore.shopall[defaultCategory].values
                                .toList()[index]
                                .name,
                            address: shopStore.shopall[defaultCategory].values
                                .toList()[index]
                                .location,
                            opentime: shopStore.shopall[defaultCategory].values
                                .toList()[index]
                                .opentime,
                            closetime: shopStore.shopall[defaultCategory].values
                                .toList()[index]
                                .closetime,
                            onTap: () {
                              _navigateToShopPage(
                                  index,
                                  shopStore.shopall[defaultCategory].values
                                      .toList()[index]
                                      .email);
                            },
                          );
                        }
                        )
                        )

                             );
            }
            ),
          ],
        ),
      ),
    );
  }
}
