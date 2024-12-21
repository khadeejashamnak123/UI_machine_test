import 'package:flutter/material.dart';

import '../../Models/saved_courses_model.dart';
import '../../constants/colors.dart';
import '../icon_name_widget.dart';

Widget savedCourses(BuildContext context) {
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  double textWidth = width > 700 ? 12 : width * 0.03;
  List<SavedCoursesModel> savedCoursesList= [
    SavedCoursesModel(title: "Basics of UI/UX Design Workflow",
      ratings:"4.7(25)",
      price:"55",
      time: "12h 52m",
      noOfLessons: "14"
    ), SavedCoursesModel(title: "Basics of PS Design Workflow",
      ratings:"4.8(29)",
      price:"65",
      time: "15h 52m",
      noOfLessons: "17"
    ), SavedCoursesModel(title: "Basics of UI/UX Design Workflow",
      ratings:"4.1(30)",
      price:"30",
      time: "2h 52m",
      noOfLessons: "9"
    ),
  ];
  return SizedBox(
    height: height * 0.38,
    child: Padding(
      padding: EdgeInsets.only(left: width * 0.05), // Responsive padding
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: savedCoursesList.length,
        itemBuilder: (context, index) {
          final colors = [orange, Colors.blue, Colors.blueGrey];
          final color = colors[index % colors.length];
          var item=savedCoursesList[index];
          return Padding(
            padding: EdgeInsets.symmetric(
                horizontal: width * 0.02, vertical: height * 0.01),

            child: Column(
              children: [
                Container(
                  width: width * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: color,
                  ),
                  child: Stack(
                    children: [
                      SizedBox(
                        width: width * 0.5,
                        child: Image.asset("assets/personImage.png",
                            fit: BoxFit.cover),
                      ),
                      Positioned(
                        right: 20,
                        top: 10,
                        child: Icon(Icons.bookmark_border, color: basewhite),
                      ),
                      Positioned(
                        right: 10,
                        top: 40,
                        child: SizedBox(
                          width: width * 0.4, // Responsive width
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Study Topic",
                                  style: TextStyle(
                                      color: basewhite, fontSize: textWidth)),
                              Text(
                                item.title!,
                                style: TextStyle(
                                    color: basewhite,
                                    fontSize: textWidth + 6,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: width * 0.8, // Responsive width
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.03, vertical: height * 0.01),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Text("Easy "),
                                SizedBox(width: width * 0.02),
                                const Baseline(
                                  baseline: 25,

                                  baselineType: TextBaseline.alphabetic,
                                  child:
                                      Text("*", style: TextStyle(fontSize: 15)),
                                ),
                                SizedBox(width: width * 0.02),
                                const Icon(Icons.star, size: 16),
                                SizedBox(width: width * 0.02),
                                 Text(item.ratings!),
                              ],
                            ),
                             Text("\$${item.price!}"),
                          ],
                        ),
                        const Text(
                          "Basics of UI/UX Design Workflow",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                        Row(
                          children: [
                            iconAndNameWidget(
                                context, Icons.access_time, item.time!),
                            SizedBox(width: width * 0.02),
                            iconAndNameWidget(
                                context, Icons.menu_book, " Lessons"),
                            SizedBox(width: width * 0.02),
                            iconAndNameWidget(
                                context, Icons.person_2_outlined, "Enrolled"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    ),
  );
}

