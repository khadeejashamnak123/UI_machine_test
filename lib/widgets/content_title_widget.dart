import 'package:flutter/material.dart';

Widget contentTitleWidget(BuildContext context, String title) {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const Text(
          "View All",
          style: TextStyle(color: Colors.grey),
        ),
      ],
    ),
  );
}
