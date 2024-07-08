import 'package:bio_check_in/Authentication_Screen.dart';

import 'studentHomepage.dart';
import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'role_choice.dart';
import 'ProfilePageBioData.dart';
import 'Courses.dart';
import 'AddCourse.dart';
import 'Attendance.dart';
import 'Authentication_Screen.dart';
import 'AttendanceSucces.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
       routes: {
         '/role': (context) => RoleChoicePage(),
         '/studentLoginPage':(context) => HomeScreen(),
         '/attendanceRecords': (context) => AttendanceScreen(),
         '/profilePageBioData':(context) => ProfileScreenData(),
         '/studentHome': (context) => HomeScreen(),
         '/studentProfile': (context) => ProfileScreenData(),
         '/backToHome': (context) => HomeScreen(),
         '/course': (context) => CoursesScreen(),
         '/add_courses': (context) => AddCourseScreen(),
         '/BiometricAuthScreen' : (context) => StudentInterface(),
        // '/BiometricAuthScreen' : (context) => SuccessScreen(),

       },
    );
  }
}
