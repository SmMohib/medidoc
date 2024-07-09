import 'package:flutter/material.dart';
import 'package:medidoc/component/colors.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final IconData icon;

  CustomTextField({required this.hintText, this.obscureText = false, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          filled: true,
      
          fillColor: Colors.white,
          
          prefixIcon: Icon(icon,color: textsecondColor,size: 20,),
          hintText: hintText,
          contentPadding: const EdgeInsets.only(
                        left: 14.0, bottom: 8.0, top: 8.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.white),
                      borderRadius: new BorderRadius.circular(25.7),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: new BorderSide(color: Colors.white),
                      borderRadius: new BorderRadius.circular(25.7),
                    ),
          
          
        ),
      ),
    );
  }
}
