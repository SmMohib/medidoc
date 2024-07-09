import 'package:flutter/material.dart';
import 'package:medidoc/widgets/texts.dart';

import '../component/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  CustomButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
            decoration: BoxDecoration(
                color: secondaryColor, borderRadius: BorderRadius.circular(8)),
            
            child: InkWell(
                onTap: onPressed,
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Center(
                    child: text18(
                        text: text, color: cardColor, isTile: false, fontSize: 16),
                  ),
                ))));
  }
}
