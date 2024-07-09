// ignore_for_file: sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:medidoc/component/colors.dart';
import 'package:medidoc/model/model.dart';
import 'package:medidoc/screen/appointment/appointment.dart';
import 'package:medidoc/screen/call/calling.dart';
import 'package:medidoc/screen/nevbar/pharmacy.dart';
import 'package:medidoc/screen/search/searchScreen.dart';
import 'package:medidoc/screen/search/search.dart';
import 'package:medidoc/widgets/texts.dart';

class HomePage extends StatefulWidget {
  Model ?model;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.05,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: secondaryColor,
                      radius: 20,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/person.png'),
                        radius: 18,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text18(
                            text: 'Good Morning!',
                            color: textColor,
                            isTile: true,
                            fontSize: 16),
                        text18(
                            text: 'Kibria',
                            color: secondaryColor,
                            isTile: true,
                            fontSize: 14),
                      ],
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
              const SizedBox(
                height: 20,
              ),

              const SearchInput(),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [


                  Material(
                    child: InkWell(onTap: () {
                      SearchScreen();
                    },
                      child: Container(
                         decoration: BoxDecoration(
                color: cardColor, borderRadius: BorderRadius.circular(15)),
            height: 150,
            width: 150,
                        child: Column(
                                      children: [
                                        Image.asset(
                        'assets/d.png',
                        height: 110,
                        width: 110,
                                        ),
                                        text18(
                          text: 'Doctor',
                          color: secondaryColor,
                          isTile: true,
                          fontSize: 14)
                                      ],
                                    ),
                      ),
                    ),
                  ),
                   Material(
                    child: InkWell(onTap: () {
                      Get.to(PharmacyPage());
                    },
                      child: Container(
                         decoration: BoxDecoration(
                color: cardColor, borderRadius: BorderRadius.circular(15)),
            height: 150,
            width: 150,
                        child: Column(
                                      children: [
                                        Image.asset(
                        'assets/med-r.png',
                        height: 110,
                        width: 110,
                                        ),
                                        text18(
                          text: 'Pharmacy',
                          color: secondaryColor,
                          isTile: true,
                          fontSize: 14)
                                      ],
                                    ),
                      ),
                    ),
                  ),
                  
                 
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ////upcoming
              twoText(
                  text1: 'Upcoming Appointment',
                  text2: 'See All',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SearchScreen(),
                        ));
                  }),

              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Expanded(
                          flex: 2,
                          child: CircleAvatar(
                            radius: 28,
                            child: CircleAvatar(
                              radius: 27,
                              backgroundImage: AssetImage('assets/cinematic.avif'),
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
                                    text: 'Dr. MS Sabina',
                                    color: cardColor,
                                    isTile: true,
                                    fontSize: 16),
                                text18(
                                    text: 'Neurologist | Square Hospital',
                                    color: cardColor,
                                    isTile: true,
                                    fontSize: 12),
                                const SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.timelapse,
                                          color: cardColor,
                                          size: 20,
                                        ),
                                      ),
                                      text18(
                                          text: 'Todat, 8:00 AM',
                                          color: cardColor,
                                          isTile: false,
                                          fontSize: 13)
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          106, 164, 198, 231),
                                      borderRadius: BorderRadius.circular(15)),
                                  height: 40,
                                  width: 150,
                                )
                              ],
                            ),
                          )),
                      Expanded(
                          flex: 2,
                          child: IconButton(
                              onPressed: () {
                                Get.to(const CallScreen());
                              },
                              icon: const Icon(
                                Icons.video_call,
                                color: cardColor,
                                size: 25,
                              )))
                    ],
                  ),
                ),
                height: MediaQuery.sizeOf(context).height * 0.17,
                width: MediaQuery.sizeOf(context).height * 0.52,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF1e92fc),
                        Color.fromARGB(255, 125, 187, 241)
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(15)),
              ),
              const SizedBox(
                height: 20,
              ),

              twoText(
                  text1: 'Medical Specialist', text2: 'See All', onTap: () {}),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.12,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: specialisttype.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Image.asset(specialisttype[index].image.toString()),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: cardColor),
                            height: MediaQuery.sizeOf(context).height * 0.07,
                            width: MediaQuery.sizeOf(context).width * 0.18,
                          ),
                        ),
                        text18(
                            text: specialisttype[index].title.toString(),
                            color: secondaryColor,
                            isTile: false,
                            fontSize: 12)
                      ],
                    );
                  },
                ),
              ),

              twoText(
                  text1: 'Top Doctors',
                  text2: 'See All',
                  onTap: (() {
                    Get.to(SearchScreen());
                  })),

              SizedBox(
                height: 200,
                child: ListView.builder(
                  itemCount: topDocrorModel.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(6.0),
                      child: InkWell(
                        onTap: () {
                          
                        },
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
                                      radius: 28,
                                      child: CircleAvatar(
                                        radius: 27,
                                        backgroundImage:
                                            AssetImage(topDocrorModel[index].image.toString()),
                                      ),
                                    ),
                                  )),
                              Expanded(
                                  flex: 7,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        text18(
                                            text: topDocrorModel[index].title.toString(),
                                            color: textColor,
                                            isTile: true,
                                            fontSize: 14),
                                            Row(children: [text18(
                                            text: ('${topDocrorModel[index].specialist.toString()}|') ,
                                            color: textsecondColor,
                                            isTile: false,
                                            fontSize: 12),text18(
                                            text: ('${topDocrorModel[index].address.toString()}|') ,
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
                                                text:topDocrorModel[index].rating.toString(),
                                                color: textColor,
                                                isTile: false,
                                                fontSize: 13)
                                          ],
                                        )
                                      ],
                                    ),
                                  )),
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Image.asset('assets/Frame.png')),
                                ),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: cardColor,
                          ),
                          height: MediaQuery.sizeOf(context).height * 0.12,
                          width: MediaQuery.sizeOf(context).height * 0.45,
                        ),
                      ),
                    );
                 
                 
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //doc
  Widget doc_fer(
      {required Image image, String? text, required Function onTap}) {
    return InkWell(
        onTap: 
          ()=>onTap
        ,
        child: Container(
            child: Column(
              children: [
                Image(
                  image: image.image,
                  height: 110,
                  width: 110,
                ),
                text18(
                    text: text.toString(),
                    color: secondaryColor,
                    isTile: true,
                    fontSize: 14)
              ],
            ),
            decoration: BoxDecoration(
                color: cardColor, borderRadius: BorderRadius.circular(15)),
            height: 150,
            width: 150));
  }

  ////text
  Widget twoText(
      {required String text1, required String text2, required VoidCallback onTap}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        text18(text: text1, color: textColor, isTile: true, fontSize: 15),
        TextButton(
          onPressed: onTap,
          child: text18(
              text: text2, color: secondaryColor, isTile: false, fontSize: 15),
        ),
      ],
    );
  }
}
