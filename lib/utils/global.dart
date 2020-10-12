import 'package:flutter/material.dart';
import 'package:grospick/services/firebase_auth_service.dart';
import 'package:grospick/services/preference_services.dart';
import 'package:grospick/services/product_services.dart';
import 'package:grospick/services/shop_services.dart';

double defaultHeight = 896;
double defaultWidth = 414;
var page_index;
bool login_signin = true;
String defaultCategory;
int shop;

final FirebaseAuthService firebaseAuthService =
    FirebaseAuthService.getInstance();
final ProductService productService = ProductService.getInstance();
final ShopService shopService = ShopService.getInstance();
final PreferenceService preferenceService = PreferenceService.getInstance();

final formKey = new GlobalKey<FormState>();

bool validateAndSave() {
  final form = formKey.currentState;
  if (form.validate()) {
    form.save();
    return true;
  } else {
    return false;
  }
}

String validateEmail(String email) {
  if (email == null || email.isEmpty) return 'Required !!!';
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  return (!regex.hasMatch(email)) ? 'Valid Email!!' : null;
}

String validateName(String name) {
  String required = requiredString(name);
  if (required != null) return required;
  Pattern pattern = r'^[ a-zA-Z]*$';
  RegExp regex = new RegExp(pattern);
  return (!regex.hasMatch(name)) ? 'Valid Name!!' : null;
}

// String validatePhone(String phone) {
//   String required = requiredString(phone);
//   if (required != null) return required;
//   Pattern pattern = r'^(?:[+0]9)?[0-9]{10}$';
//   RegExp regex = new RegExp(pattern);
//   return (!regex.hasMatch(phone)) ? 'Valid Phone Number!!' : null;
// }

String requiredString(String value) {
  if (value == null || value.isEmpty) return 'Required !!!';
  return null;
}

Widget showSnackbar(
  String text,
  BuildContext context,
) {
  if (context != null) {
    Scaffold.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(
            text,
          ),
          backgroundColor: Colors.black,
          duration: Duration(milliseconds: 2500),
        ),
      );
  } else {
    return SizedBox();
  }
}
