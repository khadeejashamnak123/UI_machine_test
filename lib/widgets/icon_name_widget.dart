import 'package:flutter/material.dart';

Widget iconAndNameWidget(BuildContext context, IconData icon, String name) {
  return Row(
    children: [
      Icon(
        icon,
        color: Colors.grey,
        size: 14,
      ),
      Text(
        name,
        style: const TextStyle(color: Colors.grey, fontSize: 14),
      )
    ],
  );
}
