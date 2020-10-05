import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:grospick/models/store_observer.dart';
import 'package:grospick/presentation/custom/category_container.dart';
import 'package:grospick/presentation/custom/text_field.dart';
import 'package:grospick/store/category_store.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GoogleMapController mapController;

  @override
  Widget build(BuildContext context) {
    return StoreObserver<CategoryStore>(
        builder: (CategoryStore categoryStore, BuildContext conteext) {
          if(categoryStore.categoryMap == null)
              categoryStore.fetchCategorties();
          if(categoryStore.isCategoryLoading)
            return Center(
              child: CircularProgressIndicator(),
            );
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
            ),
          ),
          SizedBox(height: ScreenUtil.instance.setHeight(32)),
          Container(
              child: (categoryStore.categoryMap == null)
                  ? SizedBox(
                      height: ScreenUtil.instance.setHeight(200),
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Container(
                        height: 3 * ScreenUtil.instance.setHeight(200),
                        width: ScreenUtil.instance
                            .setWidth(ScreenUtil.instance.width),
                        child: GridView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 8,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 5,
                              childAspectRatio: 1.5,
                            ),
                            itemBuilder: (context, i) {
                              return Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 2),
                                  child: CustomCategoryContainer(
                                      image: 'assets/fruits.png', name: "v"));
                            }),
                      ),
                    )),
          Container(
            width: ScreenUtil.instance.setWidth(ScreenUtil.instance.width),
            height: ScreenUtil.instance.setHeight(200),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/c.jpg'), fit: BoxFit.fitWidth)),
          )
        ],
      );
    });
  }
}

// SearchMapPlaceWidget(
//     hasClearButton: true,
//     placeType: PlaceType.address,
//     placeholder: 'Enter the location',
//     apiKey: "AIzaSyBM84WFmoqhlkcUbZGPjkH1D1cwn8XJvmE",
//     onSelected: (Place place) async {
//       Geolocation geolocation = await place.geolocation;
//       print(geolocation);
//       mapController.animateCamera(
//           CameraUpdate.newLatLng(geolocation.coordinates));
//       mapController.animateCamera(CameraUpdate.newLatLngBounds(geolocation.bounds, 0));

//     }),

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
