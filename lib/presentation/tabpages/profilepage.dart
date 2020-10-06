import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grospick/models/store_observer.dart';
import 'package:grospick/presentation/custom/button.dart';
import 'package:grospick/presentation/custom/custom_image.dart';
import 'package:grospick/presentation/email_auth_page.dart';
import 'package:grospick/presentation/splashpage.dart';
import 'package:grospick/store/user_store.dart';
import 'package:grospick/utils/global.dart';

import 'package:grospick/utils/stringValues.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  _navigateToLoginPage() {
    login_signin = true;
    Navigator.pushNamed(context, EmailAuthPage.routeNamed);
  }

  _navigateToSigninPage() {
    login_signin = false;
    Navigator.pushNamed(context, EmailAuthPage.routeNamed);
  }

 
  
  _naviagetToHomePage() {
    Navigator.pushNamed(context, SplashPage.routeNamed);
  }

  @override
  Widget build(BuildContext context) {
    return StoreObserver<UserStore>(
        builder: (UserStore userStore, BuildContext conteext) {
      print(userStore.isLoggedIn);
      if (userStore.isLoggedIn)
       {
        if (userStore.isLoading)
          return Center(
            child: CircularProgressIndicator(),
          );
        else
         {
          return Container(
              child: Padding(
                  padding: EdgeInsets.all(32),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: ScreenUtil.instance.setHeight(64)),
                        CustomImage(
                          image: StringValues.GROSSPICK,
                          height: 100,
                          width: 300,
                        ),
                        SizedBox(height: ScreenUtil.instance.setHeight(64)),
                        Text(
                          'Name',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: ScreenUtil.instance.setHeight(8)),
                        Text(userStore.loggedInUser.name,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)),
                        SizedBox(height: ScreenUtil.instance.setHeight(32)),
                        Text(
                          'Email',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: ScreenUtil.instance.setHeight(8)),
                        Text(userStore.loggedInUser.email,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)),
                        SizedBox(height: ScreenUtil.instance.setHeight(32)),
                        CustomButton(
                          height: 70,
                          width: ScreenUtil.instance.width,
                          text: StringValues.SIGNOUT,
                          fontColor: Colors.white,
                          fontSize: 22,
                          onTap: () async {
                            print(preferenceService.getUID());

                            userStore.logout();

                            print(preferenceService.getUID());
                            _naviagetToHomePage();
                          },
                        )
                      ])));
        }
      } 
        return Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(32),
            child: Center(
              child: ListView(
                children: [
                  SizedBox(height: ScreenUtil.instance.setHeight(64)),
                  CustomImage(
                    image: StringValues.GROSSPICK,
                    height: 100,
                    width: 300,
                  ),
                  SizedBox(height: ScreenUtil.instance.setHeight(128)),
                  CustomButton(
                    onTap: _navigateToLoginPage,
                    height: 100,
                    width: ScreenUtil.instance.width,
                    text: StringValues.LOGIN,
                    fontColor: Colors.white,
                    fontSize: 22,
                  ),
                  SizedBox(height: ScreenUtil.instance.setHeight(32)),
                  CustomButton(
                    onTap: _navigateToSigninPage,
                    height: 100,
                    width: ScreenUtil.instance.width,
                    text: StringValues.SIGNIN,
                    fontColor: Colors.white,
                    fontSize: 22,
                  ),
                ],
              ),
            ),
          ),
        );
      
    });
  }
}
