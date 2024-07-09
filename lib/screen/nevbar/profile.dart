// ignore_for_file: sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medidoc/widgets/customAppbar.dart';

import '../../component/colors.dart';
import '../../widgets/texts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [const SizedBox(height: 20,),
            CustomAppBar(text: 'Profile'),
            const SizedBox(height: 20,),
            SizedBox(
                   height: MediaQuery.sizeOf(context).height * 0.25,
                 
                 child: Stack(
                   children: [
                    
                     Positioned(right: 1, child: Container(  
                       child: Padding(
                         padding: const EdgeInsets.only(left: 80),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                           text18(text: 'Md, Karim', color: secondaryColor, isTile: true, fontSize: 19),
                           text18(text: 'Age :67', color: textsecondColor, isTile: false, fontSize: 14),
                           text18(text: 'Wight "101 Kg', color: textsecondColor, isTile: false, fontSize: 14),
                           text18(text: 'Height :5.2’’', color: textsecondColor, isTile: false, fontSize: 14),
                           text18(text: 'Gender :Male', color: textsecondColor, isTile: false, fontSize: 14),
                         
                           
                           ],),
                       ), 
                       height: MediaQuery.sizeOf(context).height * 0.20,
                     width:  MediaQuery.sizeOf(context).height * 0.32,color: cardColor,)),
                     Positioned(left: 10, child: CircleAvatar(
                       backgroundColor: secondaryColor, radius: 80,child: CircleAvatar(radius: 77,
                        backgroundImage: AssetImage('assets/person.png'),),)),
                   
                   
                   ],
                 ),
                 ),
            const SizedBox(height: 20,),
        
             Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      text18(
                                          text: 'Email',
                                          color: textsecondColor,
                                          isTile: false,
                                          fontSize: 16),
                                      text18(
                                          text: 'smbalam12@gmail.com',
                                          color: textColor,
                                          isTile: false,
                                          fontSize: 19),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                     
                                    ],
                                  ),
                                ),
                              ),
                             
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: cardColor,
                          ),
                          height: MediaQuery.sizeOf(context).height * 0.10,
                          width: MediaQuery.sizeOf(context).height * 0.45,
                        ),
                      ),
        
                      ///
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      text18(
                                          text: 'Phone',
                                          color: textsecondColor,
                                          isTile: false,
                                          fontSize: 16),
                                      text18(
                                          text: '01928382833',
                                          color: textColor,
                                          isTile: false,
                                          fontSize: 19),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                     
                                    ],
                                  ),
                                ),
                              ),
                             
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: cardColor,
                          ),
                          height: MediaQuery.sizeOf(context).height * 0.10,
                          width: MediaQuery.sizeOf(context).height * 0.45,
                        ),
                      ),
                      ///
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      text18(
                                          text: 'Dirth Day',
                                          color: textsecondColor,
                                          isTile: false,
                                          fontSize: 16),
                                      text18(
                                          text: '2/3/1989',
                                          color: textColor,
                                          isTile: false,
                                          fontSize: 19),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                     
                                    ],
                                  ),
                                ),
                              ),
                             
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: cardColor,
                          ),
                          height: MediaQuery.sizeOf(context).height * 0.10,
                          width: MediaQuery.sizeOf(context).height * 0.45,
                        ),
                      ),
                      ///
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      text18(
                                          text: 'Gender',
                                          color: textsecondColor,
                                          isTile: false,
                                          fontSize: 16),
                                      text18(
                                          text: 'Male',
                                          color: textColor,
                                          isTile: false,
                                          fontSize: 19),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                     
                                    ],
                                  ),
                                ),
                              ),
                             
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: cardColor,
                          ),
                          height: MediaQuery.sizeOf(context).height * 0.10,
                          width: MediaQuery.sizeOf(context).height * 0.45,
                        ),
                      ),
                      ///
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      text18(
                                          text: 'Address',
                                          color: textsecondColor,
                                          isTile: false,
                                          fontSize: 16),
                                      text18(
                                          text: 'Savar,Dhaka',
                                          color: textColor,
                                          isTile: false,
                                          fontSize: 19),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                     
                                    ],
                                  ),
                                ),
                              ),
                             
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: cardColor,
                          ),
                          height: MediaQuery.sizeOf(context).height * 0.10,
                          width: MediaQuery.sizeOf(context).height * 0.45,
                        ),
                      ),
                   
              Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      text18(
                                          text: '',
                                          color: textsecondColor,
                                          isTile: false,
                                          fontSize: 11),
                                      text18(
                                          text: 'My Order',
                                          color: textColor,
                                          isTile: false,
                                          fontSize: 19),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                     
                                    ],
                                  ),
                                ),
                              ),
                             
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: cardColor,
                          ),
                          height: MediaQuery.sizeOf(context).height * 0.10,
                          width: MediaQuery.sizeOf(context).height * 0.45,
                        ),
                      ),      
            
            const SizedBox(height: 20,),
          ],),
        ),
      ),
    );
}}