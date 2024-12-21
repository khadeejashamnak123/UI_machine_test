import 'package:flutter/material.dart';
import 'package:ui_machine_test/widgets/content_title_widget.dart';
import 'package:ui_machine_test/screens/dashboard/dashboard_appbar.dart';
import 'package:ui_machine_test/widgets/course_widgets/ongoing_courses.dart';

import '../../constants/colors.dart';
import '../../widgets/course_widgets/saved_courses.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: basewhite,
      body: SingleChildScrollView(
        child: Column(
          children: [
            dashboardAppBar(context),
            contentTitleWidget(context, "Ongoing Courses"),
            ongoingCourses(context),
            contentTitleWidget(context, "Saved Courses"),
            savedCourses(context),
          ],
        ),
      ),
    );
  }
}
