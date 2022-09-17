
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackfinal/view/bottomnavigation/favorite.dart';
import 'package:hackfinal/view/splashscreen.dart';
import 'package:hackfinal/view/themedata/darktheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
         themeMode:ThemeMode.system,
     // theme: ThemeClass.lightTheme,
      darkTheme: ThemeClass.darkTheme,
        home:
            // DetailCourse()
      SplashScreen()
            //bottomNavBar()
          // videoListView()
          //MyProfile()
   //VideoScreenApi()
  
    
   
           
            );
  }
}
