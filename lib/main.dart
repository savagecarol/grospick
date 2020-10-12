import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grospick/presentation/firstpage.dart';
import 'package:grospick/presentation/menupage.dart';
import 'package:grospick/presentation/shoppage.dart';
import 'package:grospick/presentation/splashpage.dart';
import 'package:grospick/presentation/email_auth_page.dart';
import 'package:grospick/store/category_store.dart';
import 'package:grospick/store/shop_store.dart';
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
              Provider<CategoryStore>.value(value: CategoryStore()),
              Provider<ShopStore>.value(value: ShopStore()),
                  ] ,
          child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(primaryColor: Colors.white,),
           initialRoute:  FirstPage.routeNamed,
                   routes: {
              FirstPage .routeNamed: (BuildContext context) => FirstPage(),        
            EmailAuthPage .routeNamed: (BuildContext context) => EmailAuthPage(),
            SplashPage .routeNamed: (BuildContext context) => SplashPage(), 
            MenuPage .routeNamed: (BuildContext context) => MenuPage(),
             ShopPage .routeNamed: (BuildContext context) => ShopPage(),         
                      },
                ),
    );
          }
        }
  