import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medidoc/component/colors.dart';
import 'package:medidoc/screen/search/searchScreen.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(5),
        ),
        padding:  const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: IconButton(
                onPressed: () {
                  Get.to( SearchScreen());
                },
                icon: const Icon(
                  Icons.search,
                  color: textsecondColor,
                )),
               
            ),
            const SizedBox(
              width: 15,
            ),
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search a doctor or health issue',
                  hintStyle: TextStyle(
                      fontSize: 13,
                      color: textsecondColor,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}