import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grospick/models/store_observer.dart';
import 'package:grospick/presentation/custom/product.dart';
import 'package:grospick/presentation/custom/scaffold.dart';
import 'package:grospick/presentation/custom/shop2.dart';
import 'package:grospick/models/product.dart';
import 'package:grospick/store/shop_store.dart';
import 'package:grospick/utils/global.dart';
import 'package:grospick/utils/stringValues.dart';

class ShopPage extends StatefulWidget {
  static const String routeNamed = 'shopage';

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  _navigateToMenuPage() {
    Navigator.pop(context);
  }

  int show = 1;
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        appBarTextSize: 19,
        appbarOnTap: _navigateToMenuPage,
        body: StoreObserver<ShopStore>(
            builder: (ShopStore shopStore, BuildContext context) {
          List<Product> t = shopStore
              .productall[shopStore.shopall[defaultCategory].values
                  .toList()[shop]
                  .email]
              .values
              .toList();

          Set<String> k = {};

          if (!t.isEmpty) {
            for (int i = 0; i < t.length; i++) {
              k.add(t[i].super_category);
            }
            print(k.toList());
          }

          return Container(
              child: ListView(children: [
            Container(
                child: (show == 1)
                    ? CustomShop2Card(
                        image: shopStore.shopall[defaultCategory].values
                            .toList()[shop]
                            .image,
                        name: shopStore.shopall[defaultCategory].values
                            .toList()[shop]
                            .name,
                        address: shopStore.shopall[defaultCategory].values
                            .toList()[shop]
                            .location,
                        openTime: shopStore.shopall[defaultCategory].values
                            .toList()[shop]
                            .opentime,
                        closeTime: shopStore.shopall[defaultCategory].values
                            .toList()[shop]
                            .closetime,
                        onTap: () {
                          setState(() {
                            show = 0;
                          });
                        },
                      )
                    : Container()),
            Container(
                child: (t.isEmpty)
                    ? Container(
                        height: ScreenUtil.instance.setHeight((show == 1)
                            ? (ScreenUtil.instance.height) / 1.8
                            : (ScreenUtil.instance.height) / 1.6),
                        child: Center(
                            child: Text(StringValues.NO_DATA_AVAILABLE,
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey[700]))))
                    : Container(
                        height: ScreenUtil.instance.setHeight(k.toList().length.toDouble() * 400),
                        child: ListView.builder(
                            itemCount: k.toList().length,
                            itemBuilder: (context, index) {
                              return Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [ 
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                                      child: Text(k.toList()[index],
                                          style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.grey[900])),
                                    ),

                                    SizedBox(
                                      height: ScreenUtil.instance.setHeight(10),
                                    ),
                                    
                                    Container(
                                        height:
                                            ScreenUtil.instance.setHeight(260),
                                        width: ScreenUtil.instance.setWidth(
                                            ScreenUtil.instance.width),
                                        child: ListView.builder(
                                            itemCount: t.length,
                                            scrollDirection: Axis.horizontal,
                                            itemBuilder: (context, i) {
                                              if (t[i].super_category ==
                                                  k.toList()[index])
                                                return CustomProductCard (
                                                    image: t[i].image[0],
                                                    name:t[i].name,
                                                    mrp:t[i].mrp[0],
                                                    );
                                              else
                                                return Container();
                                            })),
                                  ],
                                ),
                              );
                            }),
                      )),
          ]));
        }));
  }
}
