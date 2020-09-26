import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
    static const String routeNamed = 'homepage';
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.pink,
      ),
    );
  }
}