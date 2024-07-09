import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:medidoc/screen/nevbar/medicineDetails.dart';
import 'package:medidoc/screen/search/search.dart';
import 'package:medidoc/widgets/CustomButton.dart';
import 'package:medidoc/widgets/imageUpload.dart';

import '../../component/colors.dart';
import '../../widgets/texts.dart';


class PharmacyPage extends StatefulWidget {
  @override
  State<PharmacyPage> createState() => _PharmacyPageState();
}

class _PharmacyPageState extends State<PharmacyPage> {
    File? _image;

  Future<void> _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cardColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
        
          children: [
            Expanded(
              flex: 3,
              
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
                        text: 'Pharmacy',
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
            
            
              const Expanded(
              flex: 3, child: SearchInput()),
         Expanded(
              flex: 18,child: Container(  
          padding: const EdgeInsets.only(left: 10,right: 10),  
          child: GridView.builder(  
            
            itemCount: 10,  
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(  
                crossAxisCount: 2,  
                crossAxisSpacing: 4.0,  
                mainAxisSpacing: 4.0,  
                mainAxisExtent: 220,
            ),  
            itemBuilder: (BuildContext context, int index){  
              return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        height: MediaQuery.sizeOf(context).height*0.23,
        width:  MediaQuery.sizeOf(context).height*0.23,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Material(shadowColor: secondaryColor,
                child: InkWell(onTap: () {
 Get.to(MedicineDetail());
                },
                  child: Container(
                   
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: cardColor),
                    child: Image.asset(
                      'assets/image 1.png',
                      width: 70,
                      height: 70,
                    ),
                  ),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: text18(text: 'Napa Extend', color: secondaryColor, isTile: true, fontSize: 16),
              ),
           text18(text: 'Medicine type\nSquare company ltd.', color: textsecondColor, isTile: false, fontSize: 12),
                       const SizedBox(height: 10,),     
              Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                     text18(text: '100 Tk', color: secondaryColor, isTile: true, fontSize: 16),
                   text18(text: '/Box', color: textsecondColor, isTile: false, fontSize: 12),
                  ],),SizedBox(width: 20,),
                   Material(child: InkWell(onTap: () {
                     Get.to(MedicineDetail());
                   }, child: CircleAvatar(radius: 16, child: Icon(Icons.add,size: 15,),)))
              ],),
            ],
          ),
                 )));
            },  
          )),  
            ),  
          ]),
      ));
  }

  ////text
  Widget twoText(
      {required String text1, required String text2, }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        text18(text: text1, color: textColor, isTile: true, fontSize: 17),
       
         
           text18(
              text: text2, color: textsecondColor, isTile: false, fontSize: 19),
     
      ],
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
      padding: const EdgeInsets.all(8.0),
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
                      child: text18(text: 'jpg or pdf (5MB) ', color: textsecondColor, isTile: false, fontSize: 12),
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
