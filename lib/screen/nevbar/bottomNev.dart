import 'package:flutter/material.dart';
import 'package:medidoc/component/colors.dart';
import 'package:medidoc/screen/nevbar/homeScreen.dart';
import 'package:medidoc/screen/nevbar/message.dart';
import 'package:medidoc/screen/nevbar/pharmacy.dart';
import 'package:medidoc/screen/nevbar/profile.dart';
import 'package:medidoc/screen/nevbar/record.dart';

class BottomNev extends StatefulWidget {
  const BottomNev({super.key});

  @override
  State<BottomNev> createState() => _BottomNevState();
}

class _BottomNevState extends State<BottomNev> {
 int current_index = 0;
  final List<Widget> pages = [
   HomePage(),RecordScreen(),PharmacyPage(),MessageScreen(),ProfileScreen(),
    
  ];
  void OnTapped(int index) {
    setState(() {
      current_index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor:cardColor ,
      body: pages[current_index],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: cardColor,
          selectedItemColor:secondaryColor,
          unselectedItemColor: textsecondColor,
          currentIndex: current_index,
          selectedFontSize: 12,
          unselectedFontSize: 10,
          onTap: OnTapped,
         
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Image.asset('assets/home.png'), label: "Home", tooltip: "Home"),
            BottomNavigationBarItem(
                icon:  Image.asset('assets/Group.png'), label: "Record", tooltip: "Record"),
             BottomNavigationBarItem(
                icon:  Image.asset('assets/ss.png'), label: "Pharmacy", tooltip: "Pharmacy"), 
                BottomNavigationBarItem(
                icon:  Image.asset('assets/mynaui_message.png'), label: "Message", tooltip: "Message"),
            BottomNavigationBarItem(
                icon:  Image.asset('assets/iconoir_profile-circle.png'),
                label: "Profile",
                tooltip: "Profile"),
          ]),
    );
  }

}