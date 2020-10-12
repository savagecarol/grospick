import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grospick/models/store_observer.dart';
import 'package:grospick/presentation/custom/custom_image.dart';
import 'package:grospick/presentation/splashpage.dart';
import 'package:grospick/store/user_store.dart';
import 'package:grospick/utils/global.dart';
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
    Timer(Duration(seconds: 3), () {
      _navigateToHomePage();
    });
  }

  _navigateToHomePage() {
    Navigator.pushReplacementNamed(context, SplashPage.routeNamed);
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
        height: defaultHeight, width: defaultWidth, allowFontScaling: false)
      ..init(context);
    return SafeArea(child: Scaffold(
      body: StoreObserver<UserStore>(
          builder: (UserStore userStore, BuildContext conteext) {
        userStore.checking();
        return Container(
          child: Center(
            child: CustomImage(
              image: StringValues.APP_LOGO,
              height: 180,
              width: 150,
            ),
          ),
        );
      }),
    ));
  }
}
