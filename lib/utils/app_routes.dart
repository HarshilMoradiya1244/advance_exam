import 'package:advance_exam/screen/home/view/home_screen.dart';
import 'package:advance_exam/screen/splash/view/splash_screen.dart';
import 'package:flutter/material.dart';

Map<String,WidgetBuilder> screen_routes = {
  '/':(context) => const SplashScreen(),
  'home':(context) => const HomeScreen(),
};