import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCategoryContainer extends StatelessWidget {
  final String image;
  CustomCategoryContainer({
    this.image,
  });

@override
  Widget build(BuildContext context) {
    return Container(
                  width:ScreenUtil.instance.setWidth(ScreenUtil.instance.width),
    
                   decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                         color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage(image),
                          fit: BoxFit.fill)),
                );
  }
}