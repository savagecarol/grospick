import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grospick/models/store_observer.dart';
import 'package:grospick/presentation/custom/custom_image.dart';
import 'package:grospick/presentation/custom/input_field.dart';
import 'package:grospick/presentation/splashpage.dart';
import 'package:grospick/store/user_store.dart';
import 'package:grospick/utils/global.dart';
import 'package:grospick/utils/stringValues.dart';

class EmailAuthPage extends StatefulWidget {
  static const String routeNamed = 'EmailAuthPage ';

  @override
  _EmailAuthPageState createState() => _EmailAuthPageState();
}

class _EmailAuthPageState extends State<EmailAuthPage> {
  int _currpage = 0;
  bool login_signin = true;
  String _email;
  String _password;
  var _do = 0;

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

  validateAndSubmit() async {
    if (validateAndSave()) {
      try {
        _do = 1;
      } catch (e) {
        print("Error =" + e.toString());
      }
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

  _navigateToHomePage() {
    Navigator.pushReplacementNamed(context, SplashPage.routeNamed);
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
        height: defaultHeight, width: defaultWidth, allowFontScaling: false)
      ..init(context);
    return SafeArea(
      child: Scaffold(body: StoreObserver<UserStore>(
          builder: (UserStore userStore, BuildContext context) {
        if (_currpage == 0) {
          return Container(
            // color: Styles.P_BACKGROUND_COLOR,
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
            //  color: Styles.BACKGROUND_COLOR,
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
                        Container(
                          child: Form(
                              key: formKey,
                              child: Column(
                                children: [
                                  SizedBox(
                                      height:
                                          ScreenUtil.instance.setHeight(45)),
                                  new CustomInputField(
                                    hintText: StringValues.EMAIL,
                                    validator: validateEmail,
                                    onSaved: (value) {
                                      return _email = value;
                                    },
                                  ),
                                  SizedBox(
                                      height:
                                          ScreenUtil.instance.setHeight(20)),
                                  new CustomInputField(
                                    obstruct: true,
                                    hintText: StringValues.PASSWORD,
                                    validator: requiredString,
                                    onSaved: (value) {
                                      return _password = value;
                                    },
                                  ),
                                  SizedBox(
                                      height:
                                          ScreenUtil.instance.setHeight(20)),
                                  Container(
                                    child: InkWell(
                                      onTap: () async {
                                        if (login_signin == true) {
                                          validateAndSubmit();
                                          if (_do == 1) {
                                            try {
                                             await userStore.logIn(
                                                  email: _email,
                                                  password: _password
                                                  );
                                              if (userStore.isLoading == false) {
                                                print(userStore.isLoading);
                                                _navigateToHomePage();
                                              } else {
                                                return showSnackbar(
                                                    'Either Email/Password was Incorrect',
                                                    context);
                                              }
                                            } catch (e) {
                                              print(e);
                                              throw e;
                                            }
                                          }
                                        }

                                        if (login_signin == false) {
                                          validateAndSubmit();
                                          if (_do == 1) {
                                            try {
                                            await userStore.createUser(
                                                  _email, _password);

                                              if (userStore.isLoading ==false)
                                               {
                                                return showSnackbar(
                                                    'Email Sent to Your Account',
                                                    context);
                                              }

                                              else {
                                                
                                                return showSnackbar(
                                                    'Some Problem in Sending Email',
                                                    context);
                                              }

                                            } catch (e) {
                                              print(e);
                                              throw e;
                                            }
                                          }
                                        }
                                      },
                                      child: Container(
                                          height:
                                              ScreenUtil.instance.setHeight(50),
                                          width:
                                              ScreenUtil.instance.setWidth(100),
                                          decoration: BoxDecoration(
                                            color: Colors.pink,
                                            borderRadius:
                                                new BorderRadius.circular(25.0),
                                          ),
                                          child: Center(
                                              child: (login_signin == true)
                                                  ? Text(StringValues.LOGIN)
                                                  : Text(StringValues.SIGNIN))),
                                    ),
                                  ),

   SizedBox(
                                      height:
                                          ScreenUtil.instance.setHeight(20)),

                                  InkWell(
                                      onTap: () {
                                        setState(() {
                                          if (login_signin == false)
                                            login_signin = true;
                                         else if(login_signin==true)
                                              login_signin = false;
                                        });
                                      },                                     
                                      child:( login_signin == true) ? Text(StringValues.CREATE_A_NEW_ACCOUNT) : Text(StringValues.ALREADY_HAVE_AN_ACCOUNT) )
                                ],
                              )),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }

        if (_currpage == 2) {}
      })),
    );
  }
}
