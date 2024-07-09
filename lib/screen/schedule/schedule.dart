// ignore_for_file: sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';
import 'package:medidoc/screen/nevbar/bottomNev.dart';
import '../../component/colors.dart';
import '../../widgets/CustomButton.dart';
import '../../widgets/texts.dart';
import '../appointment/appointment.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: primaryColor,
        
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.05,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Get.to(BottomNev());
                          },
                          icon: const Icon(Icons.arrow_back_ios_new_rounded)),
                      const SizedBox(
                        width: 10,
                      ),
                      Center(
                        child: text18(
                            text: 'Schedule',
                            color: textColor,
                            isTile: true,
                            fontSize: 20),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset('assets/mage_notification-bell.png'),
                              const SizedBox(
                                width: 10,
                              ),
                              Image.asset('assets/Vector (2).png')
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding:  const EdgeInsets.all(6.0),
                    child: Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                          const Expanded(
                              flex: 2,
                              child: Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundColor: secondaryColor,
                                  child: CircleAvatar(
                                    radius: 28,
                                    child: CircleAvatar(
                                      radius: 27,
                                      backgroundImage:
                                          AssetImage('assets/doc1.png'),
                                    ),
                                  ),
                                ),
                              )),
                          Expanded(
                            flex: 7,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  text18(
                                      text: 'Dr. Alvi',
                                      color: textColor,
                                      isTile: true,
                                      fontSize: 14),
                                  text18(
                                      text: 'Neurologist | Square Hospital',
                                      color: textsecondColor,
                                      isTile: false,
                                      fontSize: 12),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  Row(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(right: 5),
                                        child: Icon(
                                          Icons.star,
                                          color: secondaryColor,
                                          size: 20,
                                        ),
                                      ),
                                      text18(
                                          text: '5.0',
                                          color: textColor,
                                          isTile: false,
                                          fontSize: 13)
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: CustomButton(
                                        text: 'Chat Now', onPressed: () {}),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ]))),
                
                Container(
                  child: Row(children: [ Expanded(flex: 2, child:
                    InkWell(onTap: () {
                      Get.to( BottomNev());
                    },
                      child: Container(
                            height: 45,
                            
                            child: Center(
                              child: text18(
                                  text: 'Profile',
                                  color: textsecondColor,
                                  isTile: false,
                                  fontSize: 16),
                            ),
                            width: MediaQuery.sizeOf(context).width / 2,
                            decoration: BoxDecoration(
                              color: cardColor,
                              borderRadius: BorderRadius.circular(
                                25.0,
                              ),
                            ),
                          ),
                    ),),
                       InkWell(onTap: () {
                         Get.to(const ScheduleScreen());
                       },
                         child: Container(
                            height: 45,
                            child: Center(
                              child: text18(
                                  text: 'Schedule',
                                  color: cardColor,
                                  isTile: false,
                                  fontSize: 16),
                            ),
                            width: MediaQuery.sizeOf(context).width / 2,
                            decoration: BoxDecoration(
                              color: secondaryColor,
                              borderRadius: BorderRadius.circular(
                                25.0,
                              ),
                            ),
                          ),
                       ),
                        ]),
                          height: 45,
                          decoration: BoxDecoration(
                            color: cardColor,
                            borderRadius: BorderRadius.circular(
                              25.0,
                            ),
                          ),
                        ),
               const SizedBox(height: 30,),
              
             DateTimeCard(),

          
                ],),
               
            
          ),
        ));
  }
}

class DateTimeCard extends StatelessWidget {
  const DateTimeCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.calendar_today,
                size: 15,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Mon, July 29',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.access_alarm,
                size: 17,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '11:00 ~ 12:10',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
