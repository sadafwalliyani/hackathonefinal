import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackfinal/view/bottomnavigation/bnbar.dart';
import 'package:hackfinal/view/lessons/videoListView.dart';
import 'package:hackfinal/view/splashscreen.dart';

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
        theme: ThemeData(
          primaryColor: Colors.white,
          textTheme: const TextTheme(
            headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
          ),
        ),
        home:
            // DetailCourse()
             SplashScreen()
            //bottomNavBar()
          // videoListView()
            );
  }
}
