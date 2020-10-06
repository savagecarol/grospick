import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grospick/models/store_observer.dart';
import 'package:grospick/presentation/custom/button.dart';
import 'package:grospick/presentation/custom/custom_image.dart';
import 'package:grospick/presentation/email_auth_page.dart';
import 'package:grospick/store/user_store.dart';
import 'package:grospick/utils/global.dart';

import 'package:grospick/utils/stringValues.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    super.initState();
  }

  _navigateToLoginPage() {
    login_signin = true;
    Navigator.pushNamed(context, EmailAuthPage.routeNamed);
  }

  _navigateToSigninPage() {
    login_signin = false;
    Navigator.pushNamed(context, EmailAuthPage.routeNamed);
  }

  @override
  Widget build(BuildContext context) {
    return StoreObserver<UserStore>(
        builder: (UserStore userStore, BuildContext conteext) {
      if (userStore.isLoggedIn == true) {
        userStore.getData();
        if (userStore.isLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return Container(
            child: Padding(
                padding: EdgeInsets.all(32),
                child: Center(
                    child: Column(children: [
                  SizedBox(height: ScreenUtil.instance.setHeight(64)),
                  CustomImage(
                    image: StringValues.GROSSPICK,
                    height: 100,
                    width: 300,
                  ),
                  Text(userStore.loggedInUser.email),
                  Text(userStore.loggedInUser.name),
                ]))));
      }
      if (userStore.isLoggedIn == false) {
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
      }
    });
  }
}
