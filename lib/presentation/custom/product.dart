import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grospick/presentation/custom/button.dart';
import 'package:grospick/utils/stringValues.dart';

class CustomProductCard extends StatelessWidget {
  final String name;
  final String image;
  final String mrp;
  final Function onTap;
  CustomProductCard({
    this.name,
    this.image,
    this.mrp,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15),
        width: ScreenUtil.instance.setWidth(180),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[500], blurRadius: 5, offset: Offset(2, 4))
            ]),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: ScreenUtil.instance.setWidth(180),
                height: ScreenUtil.instance.setHeight(130),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        topLeft: Radius.circular(10)),
                    color: Colors.white,
                    image: DecorationImage(
                        image: NetworkImage(image), fit: BoxFit.fill)),
              ),
             Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Container(
                        child: Text(
                              name,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                      ),
                                       SizedBox(
                      height: ScreenUtil.instance.setHeight(5),
                    ),

                      Row(
                        children: [
                         Container(
                           child: Text(
                              'Rs.',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300),
                            ),
                         ),
                          SizedBox(
                        width: ScreenUtil.instance.setWidth(5),
                      ),

                          Container(
                            child: Text(
                              mrp,
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                        ],
                      ),
                         SizedBox(
                      height: ScreenUtil.instance.setHeight(5),
                    ),
                       CustomButton(
                          height: ScreenUtil.instance.setWidth(40),
                          width: ScreenUtil.instance.setWidth(170),
                          text: StringValues.ADD,
                          fontColor: Colors.white,
                          fontSize: 14,
                          onTap:onTap
                        )
                  ],
                ),
              )
            ]));
  }
}
