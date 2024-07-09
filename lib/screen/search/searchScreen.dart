import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:medidoc/model/model.dart';
import 'package:medidoc/screen/appointment/appointment.dart';
import 'package:medidoc/screen/search/search.dart';
import 'package:medidoc/widgets/CustomButton.dart';

import '../../component/colors.dart';
import '../../widgets/texts.dart';
import '../call/calling.dart';

class SearchScreen extends StatefulWidget {
   SearchScreen({super.key,this.model});
  Model? model;

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: primaryColor,
 
      body: Padding(
        padding:  const EdgeInsets.all(8.0),
        child: Column(
          children: [
            
           Expanded(flex: 1,child: Container(),),
          const Expanded(flex: 2, child: SearchInput()),
         
      Expanded(
      flex: 15,
        child:ListView.builder(
        itemCount: topDocrorModel.length,
        itemBuilder: (context, index) {
        return 
             Padding(
               padding: const EdgeInsets.all(6.0),
               child: Container(
               
                // ignore: sort_child_properties_last
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                Expanded(flex: 2, child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: CircleAvatar(radius: 28,child: 
                   CircleAvatar(radius: 27,backgroundImage: 
                   AssetImage(topDocrorModel[index].image.toString()),),),
                  )),
                  Expanded(flex: 7, child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      
                       text18(text: topDocrorModel[index].title.toString(), color: textColor, isTile: true, fontSize: 14),
                     
                     Row(children: [ text18(text:topDocrorModel[index].specialist.toString(), 
                     color: textsecondColor, isTile: false, fontSize: 12), 
                     text18(text:topDocrorModel[index].address.toString(),
                      color: textsecondColor, isTile: false, fontSize: 12),],),
                     const SizedBox(height: 7,),
                      Row(children: [
                        
                        Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: Icon(Icons.star,color: secondaryColor,size: 20,),
                        ),
                        
                        text18(text:topDocrorModel[index].rating.toString(),
                      color: textsecondColor, isTile: false, fontSize: 12),
                        
                        ],),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: CustomButton(text: 'Appointment Now', onPressed: 
                    (){Get.to( Appointment(appointmentModel: topDocrorModel[index],));}),
                  )
                    ],),
                  )),
                   Expanded (flex: 2, child: 
               Padding(
                 padding: const EdgeInsets.all(5.0),
                 child: Align(alignment: Alignment.topCenter, child: Image.asset('assets/Frame.png')),
               ),
                
               )
                
                
                ],),


                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: cardColor,),
                height: MediaQuery.sizeOf(context).height * 0.19,
                width: MediaQuery.sizeOf(context).height * 0.45,),
             );
        
      },)
        ,),
       
          ],
        ),
      ),
    );
  }
}
