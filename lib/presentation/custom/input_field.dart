import 'package:flutter/material.dart';
import 'package:grospick/utils/global.dart';

class CustomInputField extends StatelessWidget {
  final String hintText;
  final Function onSaved;
  final TextInputType textInputType;
  final Function validator;
  final double width;
  final bool obstruct;
  final String initialValue;
  CustomInputField(
      {this.hintText,
      this.width,
      this.onSaved,
      this.textInputType = TextInputType.text,
      this.validator,
      this.obstruct = false,
      this.initialValue
      
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: TextFormField(
        keyboardType: textInputType,
        decoration: new InputDecoration(
          hintText: hintText,
          fillColor: Colors.black,
          border: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(25.0),
            borderSide: new BorderSide(),
          ),
        ),
        onSaved: onSaved,
        obscureText: obstruct,
        validator: validator,
        initialValue: initialValue,
      ),
    );
  }
}
