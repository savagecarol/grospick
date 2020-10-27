import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCategoryContainer extends StatelessWidget {
  final String image;
  final Function onTap;
  CustomCategoryContainer({
    this.image,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: ScreenUtil.instance.setHeight(16)),
        height: ScreenUtil.instance.setHeight(140),
         width: ScreenUtil.instance.setWidth((ScreenUtil.instance.width)/2.4),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill)),
      ),
    );
  }
}
