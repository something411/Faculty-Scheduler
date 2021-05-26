import 'package:flutter/material.dart';

class TimeTableScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Time Table'),
      ),
      body: Center(
        child: Image(
          image: AssetImage('lib/assets/images/timetable.jpeg'),
        ),
      ),
    );
  }
}
