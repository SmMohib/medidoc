import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:medidoc/component/colors.dart';
import 'package:medidoc/screen/call/calling.dart';
import 'package:medidoc/screen/nevbar/homeScreen.dart';
import 'package:medidoc/screen/nevbar/bottomNev.dart';
import 'package:medidoc/widgets/texts.dart';

class VideoCallScreen extends StatelessWidget {
  const VideoCallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Stack(
      children: [
        Image.asset('assets/cinematic.avif',height: double.infinity,width: double.infinity,fit: BoxFit.cover,),
     // Container(height: double.infinity,width: double.infinity,color:Color.fromARGB(193, 15, 15, 15),),
      Positioned(top: 30,left: 30, child: Row(children: [
        Icon(Icons.arrow_drop_down_sharp,color: cardColor,size: 45,),
        text18(text: 'Md, Kamal', color: cardColor, isTile: true      , fontSize: 18)],))
      ,
      //user image
      Positioned(
        top: 100,
        right: 10,
        child: Container(
          width: MediaQuery.of(context).size.height*0.15,
          height: MediaQuery.of(context).size.height*0.25,
          
          child: Image.asset('assets/person.png',fit: BoxFit.cover,
          ),
        ),
      ),
     Positioned(bottom: 210,left: 110, child: text18(text: 'Dr. Ms Sabina', color: cardColor, isTile: true, fontSize: 22)),
      Positioned(bottom: 180,left: 150, child: text18(text: 'Calling', color: cardColor, isTile: false, fontSize: 18))
     
     ,Positioned(bottom: 100,left: 90, child: Row(children: [
      ///video call
     
      InkWell(onTap: () {
        Get.to(CallScreen());
     }, child:
     CircleAvatar(
      radius: 26,
      backgroundColor: Color.fromARGB(237, 228, 221, 221),
     child: Image.asset('assets/camera-switch-20-filled.png',),)),
         //// cancel
          SizedBox(width: 10,),
     InkWell(onTap: () {
      Get.to(BottomNev());
       
     }, child:
     CircleAvatar(
      radius: 26,
      backgroundColor: Color.fromARGB(209, 213, 20, 20),
     child: Image.asset('assets/ion_call.png',),)),
     //mic
     SizedBox(width: 10,),
     InkWell(onTap: () {
       
     }, child:
     CircleAvatar(
      radius: 26,
      backgroundColor: Color.fromARGB(238, 94, 92, 92),
     child: Image.asset('assets/streamline_voice-mail.png',),)),
     ],),
     //
     
     
     
     ),
     //
     
      ],
    ),);
  }
}