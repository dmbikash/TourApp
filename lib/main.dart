import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:tour_plan/screen/about_us.dart';
import 'package:tour_plan/screen/home.dart';
import 'package:tour_plan/screen/splash_screen.dart';
import 'package:tour_plan/screen/suggestions.dart';
import 'package:tour_plan/screen/update_profile.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tour Plan',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.lightGreen,


      ),

      initialRoute: '/',
      routes: {
        '/' : (context) => SplashScreen(),
        // '/' : (context) => DateTimeWidget(),
        'UpdateProfile' : (context) => UpdateProfile(),
        'Home' : (context) => Home(),
        'AboutUs' : (context) => AboutUs(),
        'Suggestions' : (context) => Suggestions(),

      },
    );
  }
}


