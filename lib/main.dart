import 'package:faculty_scheduler/screens/login_screen.dart';
import 'package:faculty_scheduler/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

// import 'package:faculty_scheduler/screens/login_screen.dart';
// import 'package:faculty_scheduler/screens/login_screen.dart';
// import 'package:faculty_scheduler/screens/notificationPage.dart';
// import 'package:faculty_scheduler/screens/profile_screen.dart';
import './screens/schedule_screen.dart';

void main() {
  runApp(MaterialApp(
    home: FacultyScheduler(),
    debugShowCheckedModeBanner: false,
    title: 'Faculty Scheduler',
  ));
}

class FacultyScheduler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: LoginScreen(),
    );
  }
}
