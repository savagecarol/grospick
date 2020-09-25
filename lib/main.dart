import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grospick/presentation/homepage.dart';
import 'package:grospick/presentation/splash_login_registration.dart';
import 'package:grospick/store/user_store.dart';
import 'package:provider/provider.dart';


void main() => runApp(GrosPick());

class GrosPick extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiProvider(
             providers: [
              Provider<UserStore>.value(value: UserStore()),
                  ] ,
          child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(primaryColor: Colors.white,),
           initialRoute: SplashLoginRegistrationPage.routeNamed,
                   routes: {
            SplashLoginRegistrationPage.routeNamed: (BuildContext context) => SplashLoginRegistrationPage(),
                  HomePage.routeNamed: (BuildContext context) => HomePage(),
                  
                      },
                ),
    );
          }
        }
  