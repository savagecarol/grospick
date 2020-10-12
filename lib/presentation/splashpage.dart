import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grospick/presentation/tabpages/profilepage.dart';
import 'package:grospick/presentation/tabpages/home_page.dart';
import 'package:grospick/presentation/tabpages/orders.dart';
import 'package:grospick/presentation/tabpages/search.dart';

import 'package:grospick/utils/global.dart';
import 'package:grospick/utils/styles.dart';

class SplashPage extends StatefulWidget {
  static const String routeNamed = 'SplashPage';
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {


  var currentPage = 0;
  _getBody() {
    switch (currentPage) {
      case 0:
        return HomePage();
        break;
      case 1:
        return Search();
        break;
      case 2:
        return Orders();
        break;
      case 3:
        return ProfilePage();
        break;
      default:
        return HomePage();
    }
  }


  _getBottomBar() {
    return Card(
      color: Styles.APP_COLOR,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      margin: EdgeInsets.all(0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _getBottomBarItem(index: 0, icontab: Icons.home),
          _getBottomBarItem(index: 1, icontab: Icons.search),
          _getBottomBarItem(index: 2, icontab: Icons.list),
          _getBottomBarItem(index: 3, icontab: Icons.account_box),
        ],
      ),
    );
  }

  _getBottomBarItem({
    int index,
    IconData icontab,
  }) {
    return GestureDetector(
      onTap: () {
        setState(() {
          currentPage = index;
        });
      },
      child: Container(
        alignment: Alignment.center,
        height: ScreenUtil.instance.setHeight(60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(5),
              child: Center(
                child: Icon(
                  icontab,
                  color: currentPage == index ? Colors.white : Colors.black,
                  size: ScreenUtil.instance.setHeight(32),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(
        height: defaultHeight, width: defaultWidth, allowFontScaling: false)
      ..init(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[Expanded(child: _getBody()), _getBottomBar()],
        ),
        resizeToAvoidBottomPadding: false,
      ),
    );
  }
}
