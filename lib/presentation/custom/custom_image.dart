import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomImage extends StatelessWidget {
  final double height;
  final double width;
  final String image;

  CustomImage({
    this.height,
    this.width,
    this.image
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill)),
      height: ScreenUtil.instance.setHeight(height),
      width: ScreenUtil.instance.setWidth(width),
    );
  }
}
