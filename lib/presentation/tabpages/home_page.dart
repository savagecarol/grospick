import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grospick/presentation/custom/text_field.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(

       children: [
   SizedBox(
          height: ScreenUtil.instance.setHeight(32)
        ),
            
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: CustomTextField(
                    size: true,
                  hintText:'Search For Store And product',
                  icon: Icons.search,
                  isPrefixIcon: true,
            ),
          ),
          SizedBox(
          height: ScreenUtil.instance.setHeight(32)
        ),
        Container(
          width:ScreenUtil.instance.setWidth(ScreenUtil.instance.width),
          height:ScreenUtil.instance.setHeight(200),
            decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/c.jpg'), fit: BoxFit.fitWidth)),
        )
       ],

    );
  }
}