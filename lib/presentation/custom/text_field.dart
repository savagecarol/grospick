import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final String initialValue;
  final double width;
  final TextInputType textInputType;
  final Function onSaved;
  final Function onChanged;
  final Function validator;
  final IconData icon;
  final bool isPrefixIcon;
  final bool size;

  CustomTextField({
    this.labelText,
    this.hintText,
    this.initialValue,
    this.width,
    this.onSaved,
    this.onChanged,
    this.validator,
    this.textInputType = TextInputType.text,
    this.icon = Icons.location_on,
    this.isPrefixIcon = false,
    this.size=false
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil.instance
          .setWidth((size)?ScreenUtil.instance.setWidth(ScreenUtil.instance.width):ScreenUtil.instance.setWidth(380)),

      margin: EdgeInsets.symmetric(
        vertical: (size)?0:ScreenUtil.instance.setWidth(10)
      ),
      padding: EdgeInsets.symmetric(
        horizontal: (size)?0:ScreenUtil.instance.setWidth(8)
      ),
      decoration: BoxDecoration(color: Colors.white,
      borderRadius: BorderRadius.circular(40),
      border: Border.all(color: Colors.grey[500],width: 2)

        ),
      child: Padding(
        padding:(isPrefixIcon)? EdgeInsets.all(0) : EdgeInsets.only(left:16),
        child: TextFormField(
            onSaved: onSaved,
            onChanged: onChanged,
            keyboardType: textInputType,
            initialValue: initialValue,
            style: TextStyle(fontSize: 20),
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                labelText: labelText,
                prefixIcon: isPrefixIcon
                    ? Icon(
                        icon,
                        color: Colors.yellow,
                      )
                    : null,
                hintStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300))),
      ),
    );
  }
}
