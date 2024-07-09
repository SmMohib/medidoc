
// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:medidoc/component/colors.dart';
import 'package:medidoc/screen/auth/login.dart';
import 'package:medidoc/screen/nevbar/homeScreen.dart';
import 'package:medidoc/widgets/texts.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
   @override
  void initState() {
    super.initState();
    // Simulate a time-consuming task (e.g., loading data) for the splash screen.
    // Replace this with your actual data loading logic.
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const splash2(),));
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: primaryColor,
    body: Center(child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/Group 2.png'),
        const Text('MediDoc',style: TextStyle(color: secondaryColor,fontSize: 20,fontWeight: FontWeight.bold),)
      ],
    ),),);
  }
}




class splash2 extends StatelessWidget {
  const splash2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
      children: [Image.asset('assets/p1.png'),
      Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            const SizedBox(height: 16,),
            text18(text: 'Welcome to MediDoc', color: textColor, isTile: true, fontSize: 18)
            ,const SizedBox(height: 16,),
            text18(text:"Your one-stop solution for healthcare needs. Book appointments seamlessly and purchase medicines hassle-free. Let's start!' ", 
            color: textsecondColor, isTile: false, fontSize: 13,),


            const SizedBox(height: 26,),
            Material  ( child:Container( decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: BorderRadius.circular(10)), height: 50,width: 200, child:
               InkWell (onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen(),));}, child: 
            Center(child: text18(text :'Get Started',
             color: cardColor, isTile: true, fontSize: 16),))),)
            ],),
        ),
        decoration: 
        const BoxDecoration(
          color: cardColor,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
        topRight: Radius.circular(30))),
       
        height: MediaQuery.sizeOf(context).height/2.5,width: double.infinity,)
      ],
    ),);
  }
}