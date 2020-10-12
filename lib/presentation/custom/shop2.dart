import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomShop2Card extends StatelessWidget {
  final String image;
  final String address;
  final String openTime;
  final String name;
  final String closeTime;
  final Function onTap;
  final bool boxs;
  CustomShop2Card({
    this.image,
    this.address,
    this.name,
    this.openTime,
    this.closeTime,
    this.onTap,
    this.boxs,
  });
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color:Colors.yellow,
                    blurRadius: 2,
                    offset: Offset(0, 0))
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: ScreenUtil.instance.setWidth(ScreenUtil.instance.width),
                height: ScreenUtil.instance.setHeight(240),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(5),
                        topLeft: Radius.circular(5)),
                    color: Colors.white,
                    image: DecorationImage(
                        image: NetworkImage(image), fit: BoxFit.fill)),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: <Widget>[
                    Positioned(
                        top: 0,
                        left: ScreenUtil.instance.setWidth(135),
                        child: Icon(Icons.bookmark,
                            size: 35, color: Colors.white))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                       SizedBox(
                      height: ScreenUtil.instance.setHeight(5),
                    ),

                       Text(
                          name,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),

                    SizedBox(
                      height: ScreenUtil.instance.setHeight(5),
                    ),

                    Row(
                      children: [
                        Icon(
                          Icons.location_on
                        ),

                                SizedBox(
                      width: ScreenUtil.instance.setWidth(10),
                    ),

                       Text(
                          'Location:',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                      width: ScreenUtil.instance.setWidth(10),
                    ),

                        Text(
                          address,
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: ScreenUtil.instance.setHeight(5),
                    ),

                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: ScreenUtil.instance.setWidth(5),
                        ),
                           Text(
                          'Open Time:',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          width: ScreenUtil.instance.setWidth(10),
                        ),
                        Text(
                          openTime,
                        ),

                          SizedBox(
                          width: ScreenUtil.instance.setWidth(20),
                        ),

                         Text(
                          'Close Time:',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300),
                        ),

                        SizedBox(
                          width: ScreenUtil.instance.setWidth(10),
                        ),
                        Text(
                          closeTime,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
