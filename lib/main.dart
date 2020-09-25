import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grospick/presentation/homepage.dart';
import 'package:grospick/presentation/splash_login_registration.dart';


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
         initialRoute: SplashLoginRegistrationPage.routeNamed,
                 routes: {
          SplashLoginRegistrationPage.routeNamed: (BuildContext context) => SplashLoginRegistrationPage(),
                HomePage.routeNamed: (BuildContext context) => HomePage()
                    },
              );
          }
        }
  