import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grospick/presentation/splashpage.dart';


void main() => runApp(GrosPick());

class GrosPick extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
        
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.white,),
        home: SplashPage()
              );
          }
        }
  