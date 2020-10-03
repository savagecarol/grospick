import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomCategoryContainer extends StatelessWidget {
  final String image;
  final String name;
  final Function onTap;
  CustomCategoryContainer({
    this.image,
    this.name,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[100],
                        blurRadius: 10,
                        offset: Offset(1, 1))
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Center(
                  child: Container(child: Image.asset(image)),
                ),
              ),
            ),
            SizedBox(
              height: ScreenUtil.instance.setHeight(8),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Text(
                    name,
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  child: Icon(Icons.arrow_forward),
                )
              ],
            )
          ],
        )),
      ),
    );
  }
}
