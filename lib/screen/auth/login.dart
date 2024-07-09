import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medidoc/screen/auth/selectItemScreen.dart';
import 'package:medidoc/screen/nevbar/homeScreen.dart';
import 'package:medidoc/screen/nevbar/bottomNev.dart';
import 'package:medidoc/widgets/CustomButton.dart';
import 'package:medidoc/widgets/texts.dart';
import 'package:get/get.dart';
import '../../component/colors.dart';
import '../../widgets/customTextfiel.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
    
      // ,Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //   Image.asset('assets/Layer_1.png'),
      //   Image.asset('assets/Layer_1.png'),
      //   Image.asset('assets/Layer_1.png'),
      // ],),
,
      const SizedBox(height: 20,),



      CustomTextField(
              hintText: 'Email',
              icon: Icons.email,
            ),
            const SizedBox(height: 16.0),
            CustomTextField(
              hintText: 'Password',
              obscureText: true,
              icon: Icons.lock,
            ),
            
            Align(alignment: Alignment.centerRight, child: TextButton(onPressed: (){}, child: Text('Forget Password?'))),
           
             const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: CustomButton(text: 'Login', onPressed: (){Get.to(BottomNev());}),
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                Text("Don't Have Account?"),
                 TextButton(onPressed: (){Get.to(SelectItemScreen());}, child: Text('Sign Up')),

               ],
             ),

      ],),
    );
  }
}