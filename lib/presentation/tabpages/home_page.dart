import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:grospick/models/store_observer.dart';
import 'package:grospick/presentation/custom/category_container.dart';
import 'package:grospick/presentation/custom/text_field.dart';
import 'package:grospick/store/category_store.dart';
import 'package:grospick/utils/global.dart';

class HomePage extends StatefulWidget {
  
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GoogleMapController mapController;
  String _city;

     
                          navigateToMenuPage(var i)
                          {
                               page_index = i;


                          }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: StoreObserver<CategoryStore>(
          builder: (CategoryStore categoryStore, BuildContext conteext) {
        if (categoryStore.categoryMap == null)
          categoryStore.fetchCategorties('categories');
        print(categoryStore.isCategoryLoading);
        if (categoryStore.isCategoryLoading)
          return Center(
            child: CircularProgressIndicator(),
          );
        print(categoryStore.isCategoryLoading);
        return ListView(
          children: [
            SizedBox(height: ScreenUtil.instance.setHeight(32)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: CustomTextField(
                size: true,
                hintText: 'Search For Store And product',
                icon: Icons.search,
                isPrefixIcon: true,
                onSaved: (value) {
                  return _city = value;
                },
              ),
            ),
            SizedBox(height: ScreenUtil.instance.setHeight(32)),
            Container(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                height: 4 * ScreenUtil.instance.setHeight(150),
                width: ScreenUtil.instance.setWidth(ScreenUtil.instance.width),
                child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categoryStore.categoryMap.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 16,
                      childAspectRatio: .64,
                    ),
                    itemBuilder: (context, i) {
                      String p = 'assets/';
                      if (categoryStore.categoryMap[i] == 'Grocery') {
                        p = p + 'groceries.png';
                      }
                      if (categoryStore.categoryMap[i] == 'Medicine') {
                        p = p + 'medicine.png';
                      }
                      if (categoryStore.categoryMap[i] == 'Restaurant') {
                        p = p + 'meat.png';
                      }
                      if (categoryStore.categoryMap[i] == 'Food') {
                        p = p + 'food.png';
                      }
                      if (categoryStore.categoryMap[i] == 'Liquor') {
                        p = p + 'liquor.png';
                      }
                      if (categoryStore.categoryMap[i] == 'Laundry') {
                        p = p + 'laundry.png';
                      }
                      if (categoryStore.categoryMap[i] == 'Pets') {
                        p = p + 'pet.png';
                      }
                      if (categoryStore.categoryMap[i] == 'Vegetables') {
                        p = p + 'fruits.png';
                      }

                      return CustomCategoryContainer(
                        image: p,
                        onTap: () {
                          page_index = i;
                          navigateToMenuPage(i);
                        },
                      );
                    }),
              ),
            )),
            SizedBox(height: ScreenUtil.instance.setHeight(32)),
            Container(
              width: ScreenUtil.instance.setWidth(ScreenUtil.instance.width),
              height: ScreenUtil.instance.setHeight(200),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/c.jpg'), fit: BoxFit.fitWidth)),
            )
          ],
        );
      }),
    );
  }
}

// SizedBox(
//   height: ScreenUtil.instance.setHeight(600),
//   child: GoogleMap(
//     initialCameraPosition:
//         CameraPosition(zoom: 15, target: LatLng(21.1458, 79.0882)),
//     onMapCreated: (GoogleMapController googleMapController) {
//       setState(() {
//         mapController = googleMapController;
//       });

//     },
//   ),
// ),

//             SearchMapPlaceWidget(
//   hasClearButton: true,
//   placeType: PlaceType.address,
//   placeholder: 'Enter the location',
//  apiKey: "AIzaSyBM84WFmoqhlkcUbZGPjkH1D1cwn8XJvmE",
//   onSelected: (Place place) async {
//     Geolocation geolocation = await place.geolocation;
//     print(geolocation);
//     mapController.animateCamera(
//         CameraUpdate.newLatLng(geolocation.coordinates));
//     mapController.animateCamera(CameraUpdate.newLatLngBounds(geolocation.bounds, 0));

//   }),
