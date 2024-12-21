import 'package:flutter/material.dart';
import 'package:ui_machine_test/widgets/search_button.dart';

import '../../constants/colors.dart';

Widget dashboardAppBar(BuildContext context) {
  final height = MediaQuery.sizeOf(context).height;
  final width = MediaQuery.sizeOf(context).width;
  return Container(
    height: height * 0.26,
    width: width,
    decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            purple,
            lightPurple,
          ],
        ),
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20))),
    child: Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.account_tree_rounded,
                    color: basewhite.withOpacity(0.4),
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Text(
                    "Learnandexcel",
                    style: TextStyle(color: basewhite, fontSize: 19),
                  ),
                ],
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: basewhite.withOpacity(0.2),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Icon(
                      Icons.notifications_none_outlined,
                      color: basewhite,
                      size: 27,
                    ),
                    Positioned(
                      top: 2,
                      right: 2,
                      child: Container(
                        height: 12,
                        width: 12,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: notificationYellow,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          searchButton(context),
        ],
      ),
    ),
  );
}
