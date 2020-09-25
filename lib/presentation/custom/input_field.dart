import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String hintText;
  final String alertField;
  final Function onSaved;
  final Function onChanged;
  final TextInputType textInputType;
  final Function validator;
    final double width;

  CustomInputField({
    this.hintText,
    this.width,
    this.alertField,
    this.onSaved,
    this.onChanged,
    this.textInputType = TextInputType.text,
    this.validator
  });


//  String _email="";
//  String _password="";

//  bool validateAndSave()
//   {
//     if(form.validate())
//     {
//      form.save();
//      return true ;
//     }
//     else
//     {
//       return false;
//     }
//  }

//  void validateAndSubmit() async
//  {
//    if(validateAndSave())
//    {
//           try
//      {

//      }

//       catch(e)
//       {
//         print("Error =" +e.toString());
//       }

//    }
//  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: TextFormField(
        keyboardType: TextInputType.text,
        decoration: new InputDecoration(hintText: hintText,
          fillColor: Colors.black,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                    borderSide: new BorderSide(),
                  ),),
        validator: validator,
        onSaved: onSaved,
        onChanged: onChanged,
      ),
    );
  }
}
