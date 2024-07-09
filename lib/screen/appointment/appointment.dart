// ignore_for_file: sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:medidoc/model/model.dart';
import 'package:medidoc/screen/nevbar/homeScreen.dart';
import 'package:medidoc/screen/schedule/schedule.dart';
import 'package:medidoc/screen/nevbar/bottomNev.dart';
import 'package:medidoc/widgets/CustomButton.dart';

import '../../component/colors.dart';
import '../../widgets/texts.dart';
import '../call/calling.dart';

class Appointment extends StatefulWidget {
   Appointment({super.key,this.appointmentModel});
  Model? appointmentModel;

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    late TabController _tabController;

    @override
    void initState() {
      _tabController = TabController(length: 2, vsync: this);
      super.initState();
    }

    @override
    void dispose() {
      super.dispose();
      _tabController.dispose();
    }

    return Scaffold(
        backgroundColor: primaryColor,
        
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.05,
                ),
                Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: const Icon(Icons.arrow_back_ios_new_rounded)),
                      const SizedBox(
                        width: 10,
                      ),
                      Center(
                        child: text18(
                            text: 'Appointment',
                            color: textColor,
                            isTile: true,
                            fontSize: 20),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
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
                    padding:   EdgeInsets.all(6.0),
                    child: Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                           Expanded(
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
                                          AssetImage( widget.appointmentModel!.image.toString(),),
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
                                      text: widget.appointmentModel!.title.toString(),
                                      color: textColor,
                                      isTile: true,
                                      fontSize: 14),
                                 Row(children: [ text18(
                                      text:  "${widget.appointmentModel!.specialist.toString()} | ",
                                      color: textsecondColor,
                                      isTile: false,
                                      fontSize: 12), text18(
                                      text:  widget.appointmentModel!.address.toString(),
                                      color: textsecondColor,
                                      isTile: false,
                                      fontSize: 12),],),
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
                                          text:  widget.appointmentModel!.rating.toString(),
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
                      Get.to( Appointment());
                    },
                      child: Container(
                            height: 45,
                            
                            child: Center(
                              child: text18(
                                  text: 'Profile',
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
                    ),),
                       InkWell(onTap: () {
                         Get.to( ScheduleScreen());
                       },
                         child: Container(
                            height: 45,
                            child: Center(
                              child: text18(
                                  text: 'Schedule',
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
              
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    text18(
                        text: 'About Us',
                        color: textColor,
                        isTile: true,
                        fontSize: 16),
                    text18(
                        text: "Welcome to Nerulogist, where we explore the brain's mysteries. Founded by neuroscientists, we delve into neuroscience's wonders. Join us in unraveling the mind's secrets. Welcome to Nerulogist – where curiosity sparks discovery.",
                        color: textsecondColor,
                        isTile: false,
                        fontSize: 12),

                        const SizedBox(height: 15,),
                    text18(
                        text: 'Visiting Fee',
                        color: textColor,
                        isTile: true,
                        fontSize: 16), 
                        
                        textRoboro(text:"${widget.appointmentModel!.visitFee} ", color: secondaryColor, isTile: true, fontSize: 26)
                  ],
                ),

                const SizedBox(height: 20,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Column(children: [textRoboro(text:'Patint', color: textsecondColor, isTile: true, fontSize: 14),
                textRoboro(text:"${widget.appointmentModel!.totalPatint.toString()} + ", color: textColor, isTile: true, fontSize: 26),
                
                ],),
                Column(children: [textRoboro(text:'Experience', color: textsecondColor, isTile: true, fontSize: 14),
                textRoboro(text:"${widget.appointmentModel!.experience.toString()} + ", color: textColor, isTile: true, fontSize: 26),
                
                ],),
                ],),
                const SizedBox(height: 40,),
                CustomButton(text: 'Book Appoinment', onPressed: (){Get.to(const FixedAppointment());})
              ],
            ),
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
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.calendar_today,
                  size: 15,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Mon, July 2',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ), Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.calendar_today,
                  size: 15,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Mon, July 11',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ), Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.calendar_today,
                  size: 15,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Mon, July 18',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ), Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.calendar_today,
                  size: 15,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Mon, July 26',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
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


class FixedAppointment extends StatelessWidget {
  const FixedAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: primaryColor,
      body: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [text18(
        text: 'Your Appointment is Fixed\n With Dr Alvi', color: textColor, isTile: true, fontSize: 16),const SizedBox(height: 10,),
        const CircleAvatar(radius: 85,backgroundColor: secondaryColor, child: CircleAvatar(radius: 76, backgroundImage: AssetImage('assets/doctor02.png'),),)
        ,const SizedBox(height: 10,),text18(
        text: 'Wed 12, May, 2024 \n At, 08:06 AM', color: secondaryColor, isTile: true, fontSize: 19),const SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomButton(text: 'Back Home', onPressed: (){Get.to( const BottomNev());}),
        )],),
    ),);
  }
}
