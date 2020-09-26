import 'package:flutter/material.dart';
import 'package:grospick/presentation/email_auth_page.dart';

class SplashPage extends StatefulWidget {
  static const String routeNamed = 'homepage';
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
    _navigateToHomePage() {
    Navigator.pushReplacementNamed(context, EmailAuthPage.routeNamed);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.pink,
        child: FloatingActionButton(onPressed:_navigateToHomePage),
      ),
    );
  }
}
