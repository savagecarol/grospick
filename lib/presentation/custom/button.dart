import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grospick/utils/styles.dart';

class CustomButton extends StatelessWidget {
  final Function onTap;
  final double height;
  final double width;
  final String text;
  final Color color;
  final double fontSize;
  final Color fontColor;
  CustomButton({
    this.onTap,
    this.height = 50,
    this.width = 100,
    this.text,
    this.color = Styles.APP_COLOR,
    this.fontSize = 16,
    this.fontColor = Colors.black,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        child: InkWell(
            onTap: onTap,
            child: Container(
              height: ScreenUtil.instance.setHeight(height),
              width: ScreenUtil.instance.setWidth(width),
              decoration: BoxDecoration(
                color: color,
                borderRadius: new BorderRadius.circular(25.0),
              ),
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(fontSize: fontSize,color: fontColor),
                ),
              ),
            )));
  }
}
