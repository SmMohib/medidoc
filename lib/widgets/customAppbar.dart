import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medidoc/widgets/texts.dart';

import '../component/colors.dart';

class CustomAppBar extends StatelessWidget {
   CustomAppBar({super.key, required this.text});
  String text;

  @override
  Widget build(BuildContext context) {
    return  Padding(
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
                              text:text,
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
                  )
              ;
  }
}