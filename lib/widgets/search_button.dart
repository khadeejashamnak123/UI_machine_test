import 'package:flutter/material.dart';

import '../constants/colors.dart';


Widget searchButton(BuildContext context) {

  return Container(
    height: 50,
    decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
        )),
    child: TextFormField(
      textDirection: TextDirection.ltr,
      style: const TextStyle(color: Colors.black),
      controller: TextEditingController(),
      enabled: false,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        hintText: 'Search courses',
        hintStyle: TextStyle(fontSize: 16),
        hintTextDirection: TextDirection.ltr,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        filled: true,
        fillColor: basewhite,
      ),
      onChanged: (String value1) {},
    ),
  );
}
