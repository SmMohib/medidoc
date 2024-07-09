import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:medidoc/widgets/CustomButton.dart';
import 'package:medidoc/widgets/imageUpload.dart';

import '../../component/colors.dart';
import '../../widgets/texts.dart';


class AddReportPage extends StatefulWidget {
  @override
  State<AddReportPage> createState() => _AddReportPageState();
}

class _AddReportPageState extends State<AddReportPage> {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [const SizedBox(height: 20,),
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
                              text: 'Add Report',
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
                  ),const SizedBox(height: 20,),
              
              
              const Text(
                'Select Add Report',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const PaymentMethodTile(
                method: 'Previous Prescription',
                description: 'Kabir’s 15 Dec , 2023',
                imagePath: 'assets/upload.png',
              ),
              

Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: primaryColor),
        child:  const Padding(
          padding: EdgeInsets.all(12.0),
          child: Text(
                  'By Proceeding You must read the terms and Condition,',
                  style: TextStyle(fontSize: 14),
                ),
        ),
      ),
    ),
    SizedBox(height: 210,child:  Center(
              child: _image == null
                  ? const Text('No image selected.')
                  : Image.file(
                      _image!,
                      width: 200,
                      height: 200,
                    ),
            ),),
   const SizedBox(height: 30,),
            
            Container(
            decoration: BoxDecoration(
              border: Border.all(color: secondaryColor),
                color: Colors.white, borderRadius: BorderRadius.circular(8)),
            
            child: InkWell(
                onTap: (){
                   _pickImage(ImageSource.gallery);
                },
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Center(
                    child: text18(
                        text: 'Upload More', color: secondaryColor, isTile: false, fontSize: 16),
                  ),
                ))), 
             const SizedBox(height: 100,),
              CustomButton(text: 'Book Now', onPressed: (){}),
              const SizedBox(height: 20),


  

             
            ],
          ),
        ),
      ),
    );
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
