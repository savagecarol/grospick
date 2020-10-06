import 'package:flutter/material.dart';
class CustomScaffold extends StatelessWidget {
  final Function appbarOnTap;
  final Widget body;
  final String appBarText;
  final double appBarTextSize;
  final Color appbarcolor;
  CustomScaffold({
    this.appbarOnTap,
    this.body,
    this.appBarText='',
    this. appBarTextSize:16,
    this.appbarcolor
  });
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: appbarcolor,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              IconButton(
                icon: new Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 28,
                ),
                onPressed: appbarOnTap,
              ),
              Text(
                appBarText,
                style: TextStyle(
                    fontSize: appBarTextSize,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
        body: body,
        resizeToAvoidBottomPadding: false,
      ),
    );
  }
}
