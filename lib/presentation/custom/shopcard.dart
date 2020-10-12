import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomShopCard extends StatelessWidget {
  final String image;
  final String name;
  final String address;
  final String closetime;
  final String opentime;
  
  final Function onTap;

  CustomShopCard(
      {this.image,
      this.name,
      this.address,
      this.closetime,
      this.opentime,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
      child: InkWell(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.only(bottom: 14),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.blueGrey[100],
              boxShadow: [
                BoxShadow(
                    color:  Colors.grey,
                    blurRadius: 10,
                    offset: Offset(2, 4))
              ]),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 
                     ScreenUtil.instance.setHeight(160),
                width
                    : ScreenUtil.instance.setWidth(180),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    image: DecorationImage(
                        image: NetworkImage(image), fit: BoxFit.fill)),
              ),
              Padding(
                padding: 
                     EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                       SizedBox(
                            height: ScreenUtil.instance.setHeight(8),
                      ),

                      Container(
                        child: Text(name,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500)),
                      ),
                      SizedBox(
                            height: ScreenUtil.instance.setHeight(8),
                      ),
                      Container(
                        child: Text(
                          address,
                          style: TextStyle(
                              fontSize:  14,
                              fontWeight: FontWeight.w300),
                        ),
                      ),


                      SizedBox(
                             height:ScreenUtil.instance.setHeight(8),
                      ),
                      
                         
                     
                      Row(
                        children: [
                            Container(
                            child: Text(
                              "Open TIme:",
                                  style: TextStyle(
                                  fontSize:  14,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),


                          Container(
                            child: Text(
                              opentime,
                                  style: TextStyle(
                                  fontSize:  14,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                        ],
                      ),

                        SizedBox(
                             height:ScreenUtil.instance.setHeight(5),
                      ),
                      


                       Row(
                        children: [
                            Container(
                            child: Text(
                              "Close TIme:",
                                  style: TextStyle(
                                  fontSize:  14,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),


                          Container(
                            child: Text(
                              opentime,
                                  style: TextStyle(
                                  fontSize:  14,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                        ],
                      ),





                     
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
