import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grospick/presentation/custom/custom_image.dart';
import 'package:grospick/presentation/custom/input_field.dart';
import 'package:grospick/utils/default.dart';
import 'package:grospick/utils/stringValues.dart';
import 'package:grospick/utils/styles.dart';

class SplashLoginRegistrationPage extends StatefulWidget {
  static const String routeNamed = 'splashloginregistration';

  @override
  _SplashLoginRegistrationPageState createState() =>
      _SplashLoginRegistrationPageState();
}

class _SplashLoginRegistrationPageState
    extends State<SplashLoginRegistrationPage> {
  int _currpage = 0;
  final formKey = new GlobalKey<FormState>();
  String _email = '';
  String _password = '';

  @override
  void initState() {
    super.initState();
    if (_currpage == 0) {
      Timer(Duration(seconds: 5), () {
        setState(() {
          _currpage = 1;
        });
      });
    }
  }

  _generaltext(String s) {
    return Container(
      width: ScreenUtil.instance.setWidth(100),
      child: Text(
        s,
        maxLines: 2,
        textAlign: TextAlign.center,
      ),
    );
  }

  _navigateToHome() {
    
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
        height: defaultHeight, width: defaultWidth, allowFontScaling: false)
      ..init(context);
    return SafeArea(
      child: Scaffold(body: Builder(builder: (BuildContext context) {
        if (_currpage == 0) {
          return Container(
            color: Styles.DEFAULT_COLOR,
            child: Center(
              child: CustomImage(
                image: StringValues.APP_LOGO,
                height: 160,
                width: 160,
              ),
            ),
          );
        }

        if (_currpage == 1) {
          return Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: ListView(
                children: [
                  Center(
                    child: Column(
                      children: [
                        SizedBox(height: ScreenUtil.instance.setHeight(64)),
                        CustomImage(
                          image: StringValues.GROSSPICK,
                          height: 100,
                          width: 300,
                        ),
                        SizedBox(height: ScreenUtil.instance.setHeight(0)),
                        Text(StringValues.GET_ANYTHING_ANYWHERE_ANYTIME),
                        SizedBox(height: ScreenUtil.instance.setHeight(40)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                CustomImage(
                                  image: StringValues.APP_ICON_1,
                                  height: 70,
                                  width: 70,
                                ),
                                SizedBox(
                                    height: ScreenUtil.instance.setHeight(5)),
                                _generaltext(StringValues
                                    .ORDER_GROCERY_ESSENTIALS_AND_MORE)
                              ],
                            ),
                            Column(
                              children: [
                                CustomImage(
                                  image: StringValues.APP_ICON_2,
                                  height: 70,
                                  width: 70,
                                ),
                                SizedBox(
                                    height: ScreenUtil.instance.setHeight(5)),
                                _generaltext(StringValues
                                    .FAST_SECURE_AND_SAFEST_DELIVERY)
                              ],
                            ),
                            Column(
                              children: [
                                CustomImage(
                                  image: StringValues.APP_ICON_3,
                                  height: 70,
                                  width: 70,
                                ),
                                SizedBox(
                                    height: ScreenUtil.instance.setHeight(5)),
                                _generaltext(StringValues
                                    .GET_VERIFIED_AND_QUALITY_SERVICES)
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: ScreenUtil.instance.setHeight(45)),
                        CustomInputField(
                          hintText: StringValues.EMAIL,
                        ),
                        SizedBox(height: ScreenUtil.instance.setHeight(20)),
                        CustomInputField(hintText: StringValues.PASSWORD),
                        SizedBox(height: ScreenUtil.instance.setHeight(20)),
                        InkWell(
                          onTap: _navigateToHome,
                          child: Container(
                              height: ScreenUtil.instance.setHeight(50),
                              width: ScreenUtil.instance.setWidth(100),
                              decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: new BorderRadius.circular(25.0),
                              ),
                              child: Center(child: Text('Login'))),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      })),
    );
  }
}
