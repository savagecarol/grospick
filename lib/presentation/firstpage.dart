import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grospick/presentation/custom/custom_image.dart';
import 'package:grospick/presentation/splashpage.dart';
import 'package:grospick/utils/stringValues.dart';

class FirstPage extends StatefulWidget {
    static const String routeNamed = 'firstPage';
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  @override
  void initState() {
    super.initState();
  Timer(Duration(seconds: 5), () {
        setState(() {
     
             _navigateToHomePage();
           });
        });
    }
  
  _navigateToHomePage() {
   return Navigator.pushReplacementNamed(context, SplashPage.routeNamed);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
          child: Center(
              child: CustomImage(
                image: StringValues.APP_LOGO,
                height: 180,
                width: 150,
              ),
            ),      
    );
  }
}