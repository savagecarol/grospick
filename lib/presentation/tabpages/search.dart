import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:grospick/presentation/custom/text_field.dart';
import 'package:grospick/utils/global.dart';
import 'package:search_map_place/search_map_place.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  GoogleMapController mapController;
  String _store;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        SizedBox(height: ScreenUtil.instance.setHeight(32)),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: CustomTextField(
            size: true,
            isPrefixIcon: true,
            hintText: 'Search',
            icon: Icons.search,
            validator: requiredString,
            onSaved: (value) {
              return _store = value;
            },
          ),
        ),

//         SearchMapPlaceWidget(
//       hasClearButton: true,
//       placeType: PlaceType.address,
//       placeholder: 'Enter the location',
//       apiKey: "AIzaSyBM84WFmoqhlkcUbZGPjkH1D1cwn8XJvmE",
//       onSelected: (Place place) async {
//         Geolocation geolocation = await place.geolocation;
//         print(geolocation);
//         mapController.animateCamera(
//             CameraUpdate.newLatLng(geolocation.coordinates));
//         mapController.animateCamera(CameraUpdate.newLatLngBounds(geolocation.bounds, 0));

//       }),

//         // Padding(
//         //   padding: const EdgeInsets.symmetric(horizontal: 32),
//         //   child: CustomTextField(
//         //     size: true,
//         //     hintText: 'Search For Store And product',
//         //     icon: Icons.search,
//         //     isPrefixIcon: true,
//         //   ),
//         // ),

//      SizedBox(height: ScreenUtil.instance.setHeight(32)),

// Expanded(
//   child:   GoogleMap(
//       initialCameraPosition:

//           CameraPosition(zoom: 15, target: LatLng(27.4924, 77.6737)),

//       onMapCreated: (GoogleMapController googleMapController) {

//         setState(() {

//           mapController = googleMapController;

//         });

//       },

//   ),
// ),
      ]),
    );
  }
}
