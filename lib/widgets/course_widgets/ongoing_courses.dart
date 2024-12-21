import 'package:flutter/material.dart';

import '../../Models/ongoing_courses_model.dart';
import '../../constants/colors.dart';

Widget ongoingCourses(BuildContext context) {
  final height = MediaQuery.sizeOf(context).height;
  final width = MediaQuery.sizeOf(context).width;
  List<OngoingCoursesModel> ongoingCourses = [
    OngoingCoursesModel(
      image: "assets/figmaIcon.png",
      title: "Basics of UI/UX Design",
      byName: "By John Doe",
      description:
          "Learn how to design user interface from design to prototype in figma.",
      percentage: 40,
    ),
    OngoingCoursesModel(
      image: "assets/psIcon.jpg",
      title: "Basics of PS Design",
      byName: "By John Doe",
      description:
          "Learn how to design user interface from design to prototype in figma.",
      percentage: 30,
    ),
    OngoingCoursesModel(
      image: "assets/figmaIcon.png",
      title: "Basics of UI/UX Design",
      byName: "By John Doe",
      description:
          "Learn how to design user interface from design to prototype in figma.",
      percentage: 80,
    ),
    OngoingCoursesModel(
      image: "assets/psIcon.jpg",
      title: "Basics of PS Design",
      byName: "By John Doe",
      description:
          "Learn how to design user interface from design to prototype in figma.",
      percentage: 10,
    ),
  ];

  return Container(
    height: 200,
    padding: const EdgeInsets.only(left: 20),
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: ongoingCourses.length,
      itemBuilder: (context, index) {
        final gradients = [
          LinearGradient(
            colors: [blue2, blue],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          LinearGradient(
            colors: [purple2, purple3],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ];
        final gradient = gradients[index % gradients.length];
        var item = ongoingCourses[index];
        return Padding(
          padding: const EdgeInsets.only(right: 8, top: 8, bottom: 8),
          child: Container(
            width: width / 1.4,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              gradient: gradient, // Apply gradient here
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 20, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: basewhite,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                image: DecorationImage(
                                    image: AssetImage(item.image!))),
                          ),
                          SizedBox(width: width * 0.02),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.title!,
                                style: TextStyle(
                                    color: basewhite,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                              Text(
                                item.byName!,
                                style: const TextStyle(
                                    color: Colors.white70, fontSize: 12),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.01),
                      SizedBox(
                        width: width / 2,
                        height: height * .05,
                        child: Text(
                          item.description!,
                          style: TextStyle(color: basewhite, fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 4,
                  width: 288,
                  child: SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      trackHeight: 3,
                      activeTrackColor: Colors.white,
                      disabledActiveTrackColor: Colors.white,
                      disabledInactiveTrackColor: Colors.white24,
                      disabledThumbColor: basewhite,
                      thumbShape: const RoundSliderThumbShape(
                        enabledThumbRadius: 3,
                        disabledThumbRadius: 4,
                      ),
                    ),
                    child: Slider(
                      activeColor: basewhite,
                      inactiveColor: basewhite,
                      secondaryActiveColor: Colors.white,
                      value: item.percentage!.toDouble(),
                      max: 100,
                      onChanged: null,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.01),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "${item.percentage}% ",
                      style: TextStyle(color: basewhite, fontSize: 11),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    ),
  );
}
