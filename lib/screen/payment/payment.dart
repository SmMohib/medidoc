import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medidoc/widgets/CustomButton.dart';

import '../../component/colors.dart';
import '../../widgets/texts.dart';

class PaymentPage extends StatelessWidget {
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
                              text: 'Appointment',
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
                  ),SizedBox(height: 20,),
              const Text(
                'Select Your Payment Method',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const PaymentMethodTile(
                method: 'Nagad',
                description: 'Pay by Nogod',
                imagePath: 'assets/nagad.png',
              ),
              const PaymentMethodTile(
                method: 'Bkash',
                description: 'Pay by Bkash',
                imagePath: 'assets/bkash.png',
              ),
              const PaymentMethodTile(
                method: 'Rocket',
                description: 'Pay by Rocket',
                imagePath: 'assets/rocket.png',
              ),
              const PaymentMethodTile(
                method: 'Master Card',
                description: 'Pay by Master Card',
                imagePath: 'assets/mastercard.png',
              ),
              const SizedBox(height: 20),
             twoText(text1: 'Consultation:', text2: '1500 ৳'),
              twoText(text1: 'Vat (15%):', text2: '225 ৳'),
               twoText(text1: 'Additional Discount:', text2: '1500 ৳'),
               const Divider(),
                twoText(text1: 'Payable:', text2: '1725 ৳'),
              
              const SizedBox(height: 30),

Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: primaryColor),
        child:  Padding(
          padding: EdgeInsets.all(12.0),
          child: Text(
                  'By Proceeding You must read the terms and Condition,',
                  style: TextStyle(fontSize: 14),
                ),
        ),
      ),
    ),
            
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
      padding: const EdgeInsets.all(6.0),
      child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: primaryColor),
        child: ListTile(
          leading: Image.asset(
            imagePath,
            width: 40,
            height: 40,
          ),
          title: Text(method),
          subtitle: Text(description),
          trailing: const Icon(Icons.arrow_forward),
          onTap: () {
            // Handle payment method selection
          },
        ),
      ),
    );
  }
}
