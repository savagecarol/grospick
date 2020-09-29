import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:grospick/presentation/custom/text_field.dart';
import 'package:search_map_place/search_map_place.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GoogleMapController mapController;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: ScreenUtil.instance.setHeight(32)),
        SearchMapPlaceWidget(
            hasClearButton: true,
            placeType: PlaceType.address,
            placeholder: 'Enter the location',
            apiKey: "AIzaSyBM84WFmoqhlkcUbZGPjkH1D1cwn8XJvmE",
            onSelected: (Place place) async {
              Geolocation geolocation = await place.geolocation;
              print(geolocation);
              mapController.animateCamera(
                  CameraUpdate.newLatLng(geolocation.coordinates));
              mapController.animateCamera(CameraUpdate.newLatLngBounds(geolocation.bounds, 0));
           
            }),
    
    
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 32),
        //   child: CustomTextField(
        //     size: true,
        //     hintText: 'Search For Store And product',
        //     icon: Icons.search,
        //     isPrefixIcon: true,
        //   ),
        // ),

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
        Container(
          width: ScreenUtil.instance.setWidth(ScreenUtil.instance.width),
          height: ScreenUtil.instance.setHeight(200),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/c.jpg'), fit: BoxFit.fitWidth)),
        )
      ],
    );
  }
}
