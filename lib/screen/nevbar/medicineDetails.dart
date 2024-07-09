import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medidoc/widgets/CustomButton.dart';
import 'package:medidoc/widgets/customAppbar.dart';
import '../../component/colors.dart';
import '../../widgets/texts.dart';

class MedicineDetail extends StatefulWidget {
  const MedicineDetail({super.key});

  @override
  State<MedicineDetail> createState() => _MedicineDetailState();
}

class _MedicineDetailState extends State<MedicineDetail> {
   int quantity = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(height: 20,),
            CustomAppBar(text: 'Medicine Details',),
            SizedBox(height: 20,),
            Center(
              child: Container(
                      width: MediaQuery.of(context).size.height *0.35,
                        height:  MediaQuery.of(context).size.height *0.35,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: cardColor),
                      child: Image.asset(
                        'assets/image.png',fit: BoxFit.contain,
                        width: MediaQuery.of(context).size.height *0.30,
                        height:  MediaQuery.of(context).size.height *0.11,
                      ),
                    ),
            ),
          
             SizedBox(height: 40,),   
              text18(text: 'Napa Syrup', color: textColor, isTile: true, fontSize: 20), 
              text18(text: 'Paracetamol', color: textsecondColor, isTile: false, fontSize: 14), 
              text18(text: 'beximco pharma. ltd.', color: textsecondColor, isTile: false, fontSize: 14),
               SizedBox(height: 40,),   
              text18(text: 'Details', color: textColor, isTile: true, fontSize: 20),   
              text18(text: "Lorem ipsum dolor sit amet consectetur. Aliquet quam eget cursus ullamcorper in in. Sed at laoreet tempus et. Pulvinar non dui ultrices porttitor. Fames mauris posuere neque massa interdum quam. Consectetur elementum ultrices sit proin augue turpis. Turpis lectus augue in.", 
              color: textsecondColor, isTile: false, fontSize: 14),     
        
               SizedBox(height: 40,),   
              text18(text: 'Suggested Products', color: textColor, isTile: true, fontSize: 20),   
        //////////// Suggested0
              SizedBox(height: MediaQuery.sizeOf(context).height*0.30,child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder:(context, index) {
                return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: MediaQuery.sizeOf(context).height*0.23,
          width:  MediaQuery.sizeOf(context).height*0.23,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                 
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: cardColor),
                  child: Image.asset(
                    'assets/image 1.png',
                    width: 70,
                    height: 70,
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
          }),),
               SizedBox(height: 20,),  
        Container(height:MediaQuery.sizeOf(context).height*0.30,
        width: double.infinity,
        decoration: BoxDecoration(color: cardColor,borderRadius: BorderRadius.circular(10),
        
        ),child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Padding(
              padding:  EdgeInsets.all(8.0),
              child: Row(
                
                children: [
              
                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
               text18(text: 'MRP. ৳120/bottle', color: textColor, isTile: true, fontSize: 16),
                text18(text: '10% off', color: textsecondColor, isTile: true, fontSize: 14),
                 text18(text: 'MRP. ৳100/box', color: textsecondColor, isTile: true, fontSize: 14),
              
              
                ],)),Expanded(child: Column(children: [
               text18(text: 'Order QTY', color: secondaryColor, isTile: true, fontSize: 16),

                Container(
                  height: MediaQuery.sizeOf(context).height*0.05,
                  width:MediaQuery.sizeOf(context).width*0.40,
                  color: primaryColor,
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                 


                 add(icon: Icon(Icons.add), ontap: (){
                   setState(() {
                          quantity ++;
                        });
                 }),
                 text18(text:quantity.toString(), color: textColor, isTile: false, fontSize: 16),
                 add(icon: Icon(Icons.remove), ontap: (){
                  setState(() {
                          quantity--;
                        });
                 }),
                  ],),)
              
                ],)),
              ],),
            ),

          
            CustomButton(text: 'Buy Now', onPressed: (){})
          ],),
        ),
       )
          ],),
        ),
      ),
    );
  }

  add({required Icon icon,required Function ontap}){
    return  Material(color: primaryColor,borderRadius: BorderRadius.circular(12),elevation: 0, child: 
    InkWell(onTap:()=> ontap, child:
  Padding(
    padding: const EdgeInsets.all(4.0),
    child: CircleAvatar(radius: 16, child: Icon(icon.icon,size: 15,),),
  )));
  }
}