import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grospick/models/store_observer.dart';
import 'package:grospick/presentation/custom/scaffold.dart';
import 'package:grospick/store/category_store.dart';
import 'package:grospick/utils/global.dart';
import 'package:grospick/utils/styles.dart';

class MenuPage extends StatefulWidget {
  static const String routeNamed = 'menupage';

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  _navigateToBackPage() {
    Navigator.pop(context);
  }

  Widget build(BuildContext context) {
    return CustomScaffold(
      appBarTextSize: 19,
      appbarOnTap: _navigateToBackPage,
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            SizedBox(height: ScreenUtil.instance.setHeight(32)),
            Container(child:(page_index==3)?
                           Container(
                  height: ScreenUtil.instance.setHeight(50),
                  child: StoreObserver<CategoryStore>(builder:
                      (CategoryStore categoryStore, BuildContext conteext) {
                    if (categoryStore.restaurant == null) {
                      categoryStore.fetchRestaurant('restaurant', 'items');
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
                                  right: ScreenUtil.instance.setHeight(10)),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                                 border: Border.all(
                                          width: 1,
                                          color: Styles.APP_COLOR
                                            ),
                                
                                ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 12),
                                child: Center(
                                    child: Text(categoryStore.restaurant[index],
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400))),
                              ));
                        });
                  })
                  ):Container()
            ),


            







          ],
        ),
      ),
    );
  }
}
