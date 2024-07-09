
// ignore_for_file: sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:medidoc/model/model.dart';

import '../../component/colors.dart';
import '../../widgets/texts.dart';

class RecordScreen extends StatelessWidget {
  const RecordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
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
                              Get.back();
                            },
                            icon: const Icon(Icons.arrow_back_ios_new_rounded)),
                        const SizedBox(
                          width: 10,
                        ),
                        Center(
                          child: text18(
                              text: 'Health Record',
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
                      Positioned(left: 20, child: CircleAvatar(
                        backgroundColor: secondaryColor, radius: 80,child: CircleAvatar(radius: 77,
                         backgroundImage: AssetImage('assets/person.png'),),)),
                    
                    
                    ],
                  ),
                  ),
        
         Padding(
           padding: EdgeInsets.all(12.0),
           child: Column(
             children: [
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                 recordData(text1: 'Blood Pressure', text2: '188', text3: 'High', icon: Icon(Icons.call)),
                 recordData(text1: 'Pulse Rate', text2: '400/456', text3: 'High', icon: Icon(Icons.bolt))
               ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                 recordData(text1: 'Sleep', text2: '188', text3: 'No Enough', icon: Icon(Icons.ac_unit_sharp),),
                 recordData(text1: 'Diabetics', text2: '26', text3: 'High', icon: Icon(Icons.dangerous))
               ],),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                 recordData(text1: 'Hemoglobin', text2: '12', text3: 'Low', icon: Icon(Icons.settings_cell)),
                 recordData(text1: 'Platelet', text2: '100,456', text3: 'Mormal', icon: Icon(Icons.select_all))
               ],),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                 recordData(text1: 'Blood Pressure', text2: '188', text3: 'High', icon: Icon(Icons.call)),
                 recordData(text1: 'Pulse Rate', text2: '456', text3: 'High', icon: Icon(Icons.call))
               ],),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                 recordData(text1: 'Blood Pressure', text2: '188', text3: 'High', icon: Icon(Icons.call)),
                 recordData(text1: 'Pulse Rate', text2: '40456', text3: 'High', icon: Icon(Icons.call))
               ],),

               SizedBox(height: 30,),
              // Align(alignment: Alignment.topLeft,child:  text18(text: 'Medicine Taking', color: textColor, isTile: true, fontSize: 20),),
               text18(text: 'Medicine Taking', color: textColor, isTile: true, fontSize: 20),
///////////////////////// text
                SizedBox(height: 30,),
                textrecordData(text1: '01', text2: 'Beta blocker (5mg)', ),
                 textrecordData(text1: '02', text2: 'Biguanides (0.25mg)', ),
                  textrecordData(text1: '03', text2: 'ferrous sulfate (50mg)', ),
                   textrecordData(text1: '04', text2: 'clonazepam (10mg)', ),
                    textrecordData(text1: '05', text2: 'Finix (0.5mg)', ),
                     
            text18(text: 'Food Restriction', color: textColor, isTile: true, fontSize: 20), 
            SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.12,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: foodRestriction.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Image.asset(foodRestriction[index].image.toString(),),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: cardColor),
                            height: MediaQuery.sizeOf(context).height * 0.07,
                            width: MediaQuery.sizeOf(context).width * 0.18,
                          ),
                        ),
                        text18(
                            text: foodRestriction[index].title.toString(),
                            color: secondaryColor,
                            isTile: false,
                            fontSize: 12)
                      ],
                    );
                  },
                ),
              ),
   
             ],
           ),
         ),        
          text18(text: 'Previous Prescription', color: textColor, isTile: true, fontSize: 20), 
           const SizedBox(height: 20),
              const PaymentMethodTile(
                method: 'Previous Prescription',
                description: 'Kabir’s 15 Dec , 2023',
                imagePath: 'assets/upload.png',
              ),
            ],),
      ),);
  }
  Widget recordData({required String text1,required String text2,required String text3,required Icon icon}){
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: cardColor),
      height:122 ,
      width: 155,
          child:  Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [ 
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                     
                      Icon(icon.icon,color: textsecondColor,size: 17,)
                  ,  SizedBox(width: 10,)   ,        text18(text: text1, color: textsecondColor, isTile: false, fontSize: 12)
                    ],
                  ),
                ),  text18(text: text2, color: secondaryColor, isTile: true, fontSize: 30),
                
                  text18(text: text3, color: textsecondColor, isTile: false, fontSize: 12)
              ],
            ),
          ),
               
      
      ),
    );
  }
  ///2nd
  Widget textrecordData({required String text1,required String text2,}){
    return Padding(
      padding:  EdgeInsets.all(8.0),
      child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: cardColor),
          child:  Padding(
            padding: EdgeInsets.all(7.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      CircleAvatar(radius: 30, backgroundColor: primaryColor, child:text18(text: text1, color: textsecondColor, isTile: true, fontSize: 19),),
                    
                   SizedBox(width: 10,)   ,       
                   
                    text18(text: text2, color: textsecondColor, isTile: false, fontSize: 19)
                    ],
                  ),
                )
              ],
            ),
          ),
               
      
      ),
    );
  }
}


class PaymentMethodTile extends StatelessWidget {
  final String method;
  final String description;
  final String imagePath;

  const PaymentMethodTile({
    Key? key,
    required this.method,
    required this.description,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(8.0),
      child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                       width: 100,
                        height: 100,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: cardColor),
                      child: Image.asset(
                        imagePath,
                        width: 50,
                        height: 50,
                      ),
                    ),Padding(
                      padding: const EdgeInsets.all(8.0),
                    
                    )
                  ],
                ),
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ Text(method),
                               Text(description),],),
                )
              ],
            ),
          ),
         
         
         
        ],)
      ),
    );
  }
}
