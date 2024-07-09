import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medidoc/component/colors.dart';
import 'package:medidoc/screen/auth/login.dart';
import 'package:medidoc/screen/search/searchScreen.dart';
import 'package:medidoc/screen/splashScreen.dart';


void main() {
  runApp(MediDocApp());
}

class MediDocApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
     
      title: 'MediDoc',
      theme: ThemeData(
        scaffoldBackgroundColor: primaryColor,
        backgroundColor: primaryColor,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: const TextTheme(
          
          bodyText1: TextStyle(color: Colors.black),
          bodyText2: TextStyle(color: Colors.black),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
