import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medidoc/screen/auth/signin.dart';
import 'package:medidoc/screen/nevbar/homeScreen.dart';
import 'package:medidoc/screen/nevbar/bottomNev.dart';
import 'package:medidoc/widgets/CustomButton.dart';
import 'package:medidoc/widgets/texts.dart';
import 'package:get/get.dart';
import '../../component/colors.dart';
import '../../widgets/customTextfiel.dart';

class SelectItemScreen extends StatelessWidget {
  const SelectItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        
          Image.asset('assets/Group 2.png'),
        const Text('MediDoc',style: TextStyle(color: secondaryColor,fontSize: 20,fontWeight: FontWeight.bold),)
     , 
      const SizedBox(height: 20,)
    
     
     ,
      
      const Row(
        children: [
          Expanded(child:Divider()),Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Sign Up As'),
          ),Expanded(child:Divider())
        ],
      ),

     
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                  Material(
                   borderRadius: BorderRadius.circular(12),
                    child: InkWell(
                      onTap: () {
                         Get.to(SignUpScreen());
                      },
                      child: Container(
                        decoration: BoxDecoration(color: cardColor,borderRadius: BorderRadius.circular(12)),
                        height: MediaQuery.sizeOf(context).height*0.22,
                            width: MediaQuery.sizeOf(context).height*0.22,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [SizedBox(height: 20,),
                            Center(child: CircleAvatar( backgroundImage: AssetImage('assets/doctor01.jpeg'),radius: 50,)),
                           SizedBox(height: 10,),
                            Text("Doctor"),
                          ],
                        )),
                    ),
                  ),
                  
                   Material(
                   borderRadius: BorderRadius.circular(12),
                    child: InkWell(
                      onTap: () {
                        Get.to(SignUpScreen());
                      },
                      child: Container(
                        decoration: BoxDecoration(color: cardColor,borderRadius: BorderRadius.circular(12)),
                        height: MediaQuery.sizeOf(context).height*0.22,
                            width: MediaQuery.sizeOf(context).height*0.22,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [SizedBox(height: 20,),
                            Center(child: CircleAvatar( backgroundImage: AssetImage('assets/person.jpeg'),radius: 50,)),
                           SizedBox(height: 10,),
                            Text("Patient"),
                          ],
                        )),
                    ),
                  ),
                  
                      ],
               ),
             ),
 SizedBox(height: 30,),
                 Padding(
                   padding: const EdgeInsets.all(12.0),
                   child: CustomButton(text: 'Done', onPressed: (){ Get.to(SignUpScreen());}),
                 )
      ],),
    );
  }
}
