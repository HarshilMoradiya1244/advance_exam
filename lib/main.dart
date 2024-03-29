import 'package:advance_exam/screen/home/provider/home_provider.dart';
import 'package:advance_exam/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: HomeProvider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: screen_routes,
      ),
    ),
  );
}
