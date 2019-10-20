import 'package:flutter/material.dart';
import 'SplashScreen.dart';
import 'AuthenActicity.dart';
import 'HomeScreenActivity.dart';
import 'Gallery.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => SplashScreen(),
      '/authen': (context) => AuthenActivity(),
      '/home': (context) => HomeScreenActivity(),
      '/gallery':(context)=>Gallery(),
    },
  ));
}
