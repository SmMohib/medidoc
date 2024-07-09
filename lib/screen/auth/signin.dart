import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medidoc/screen/auth/login.dart';
import 'package:medidoc/screen/auth/selectItemScreen.dart';
import 'package:medidoc/screen/nevbar/homeScreen.dart';
import 'package:medidoc/screen/nevbar/bottomNev.dart';
import 'package:medidoc/widgets/CustomButton.dart';
import 'package:medidoc/widgets/texts.dart';
import 'package:get/get.dart';
import '../../component/colors.dart';
import '../../widgets/customTextfiel.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
    
      ,Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        //   Icon( Icons.facebook,),
        //     Icon( Icons.social_distance,),
          
        // Image.asset('assets/Layer_1.png'),
        // Image.asset('assets/Layer_1.png'),
        // Image.asset('assets/Layer_1.png'),
      ],),

      const SizedBox(height: 20,),


    CustomTextField(
              hintText: 'Name',
              obscureText: true,
              icon: Icons.person,
            ),  const SizedBox(height: 12.0),
             CustomTextField(
              hintText: 'Phone',
              obscureText: true,
              icon: Icons.call,
            ),  const SizedBox(height: 12.0),
      CustomTextField(
              hintText: 'Email',
              icon: Icons.email,
            ),
            const SizedBox(height: 12.0),
            CustomTextField(
              hintText: 'Password',
              obscureText: true,
              icon: Icons.lock,
            ),
         
            
           
           
             const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton(text: 'Sign Up', onPressed: (){Get.to(BottomNev());}),
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                Text("You Have Account?"),
                 TextButton(onPressed: (){Get.to(LoginScreen());}, child: Text('Log In')),

               ],
             ),

      ],),
    );
  }
}