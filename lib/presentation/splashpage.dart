import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grospick/utils/default.dart';
import 'package:grospick/utils/stringValues.dart';
import 'package:grospick/utils/styles.dart';

class SplashPage extends StatefulWidget {

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
     ScreenUtil.instance = ScreenUtil(
        height: defaultHeight, width: defaultWidth, allowFontScaling: false)
      ..init(context);
    return SafeArea(
          child: Scaffold(
            body:Container(
              color: Styles.DEFAULT_COLOR,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                             image: DecorationImage(
                            image:  AssetImage(StringValues.APP_LOGO),
                           fit: BoxFit.fill)),
                      height: ScreenUtil.instance.setHeight(160),
                    width: ScreenUtil.instance.setWidth(130),
                      ),
                  ),
                ],
              ),
            )

      ),
    );
  }
}